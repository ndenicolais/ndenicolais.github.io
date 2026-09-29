import type { Block, Inline } from "@/lib/markdown";

function InlineContent({ content }: { content: Inline[] }) {
  return (
    <>
      {content.map((node, i) => {
        switch (node.type) {
          case "strong":
            return <strong key={i} className="font-semibold text-heading">{node.value}</strong>;
          case "em":
            return <em key={i}>{node.value}</em>;
          case "link":
            return (
              <a key={i} href={node.href} className="text-accent underline-offset-4 hover:underline">
                {node.value}
              </a>
            );
          default:
            return <span key={i}>{node.value}</span>;
        }
      })}
    </>
  );
}

export default function MarkdownContent({ blocks }: { blocks: Block[] }) {
  return (
    <div className="space-y-4 leading-relaxed text-text-2">
      {blocks.map((block, i) => {
        switch (block.type) {
          case "heading":
            if (block.level === 1) {
              return (
                <h1 key={i} id={block.id} className="text-3xl font-bold tracking-tight text-heading sm:text-4xl">
                  <InlineContent content={block.content} />
                </h1>
              );
            }
            if (block.level === 2) {
              return (
                <h2 key={i} id={block.id} className="scroll-mt-24 pt-4 text-2xl font-bold text-heading">
                  <InlineContent content={block.content} />
                </h2>
              );
            }
            return (
              <h3 key={i} id={block.id} className="scroll-mt-24 pt-2 text-lg font-semibold text-heading">
                <InlineContent content={block.content} />
              </h3>
            );
          case "list":
            return (
              <ul key={i} className="list-disc space-y-2 pl-6 marker:text-accent">
                {block.items.map((item, j) => (
                  <li key={j}>
                    <InlineContent content={item} />
                  </li>
                ))}
              </ul>
            );
          case "rule":
            return <hr key={i} className="my-8 border-border" />;
          default:
            return (
              <p key={i}>
                <InlineContent content={block.content} />
              </p>
            );
        }
      })}
    </div>
  );
}
