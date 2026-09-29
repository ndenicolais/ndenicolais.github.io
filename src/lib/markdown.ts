// Minimal Markdown parser for static legal pages: headings, paragraphs, lists,
// horizontal rules and inline **bold**, *italic* and [links](url).

export type Inline =
  | { type: "text"; value: string }
  | { type: "strong"; value: string }
  | { type: "em"; value: string }
  | { type: "link"; value: string; href: string };

export type Block =
  | { type: "heading"; level: 1 | 2 | 3; id: string; content: Inline[] }
  | { type: "paragraph"; content: Inline[] }
  | { type: "list"; items: Inline[][] }
  | { type: "rule" };

const inlinePattern = /(\*\*[^*]+\*\*|\*[^*]+\*|\[[^\]]+\]\([^)]+\))/g;

export function parseInline(text: string): Inline[] {
  return text
    .split(inlinePattern)
    .filter(Boolean)
    .map((part): Inline => {
      if (part.startsWith("**") && part.endsWith("**")) {
        return { type: "strong", value: part.slice(2, -2) };
      }
      const link = part.match(/^\[([^\]]+)\]\(([^)]+)\)$/);
      if (link) return { type: "link", value: link[1], href: link[2] };
      if (part.length > 2 && part.startsWith("*") && part.endsWith("*")) {
        return { type: "em", value: part.slice(1, -1) };
      }
      return { type: "text", value: part };
    });
}

function slugify(text: string): string {
  return text
    .toLowerCase()
    .normalize("NFD")
    .replace(/[̀-ͯ]/g, "")
    .replace(/[^a-z0-9]+/g, "-")
    .replace(/^-|-$/g, "");
}

export function parseMarkdown(source: string): Block[] {
  const blocks: Block[] = [];
  let paragraph: string[] = [];
  let list: string[] = [];

  const flush = () => {
    if (paragraph.length) blocks.push({ type: "paragraph", content: parseInline(paragraph.join(" ")) });
    if (list.length) blocks.push({ type: "list", items: list.map(parseInline) });
    paragraph = [];
    list = [];
  };

  for (const raw of source.split(/\r?\n/)) {
    const line = raw.trim();
    const heading = line.match(/^(#{1,3})\s+(.*)$/);

    if (!line) {
      flush();
    } else if (line === "---") {
      flush();
      blocks.push({ type: "rule" });
    } else if (heading) {
      flush();
      const level = heading[1].length as 1 | 2 | 3;
      blocks.push({ type: "heading", level, id: slugify(heading[2]), content: parseInline(heading[2]) });
    } else if (line.startsWith("- ")) {
      if (paragraph.length) flush();
      list.push(line.slice(2));
    } else {
      if (list.length) flush();
      paragraph.push(line);
    }
  }
  flush();

  return blocks;
}
