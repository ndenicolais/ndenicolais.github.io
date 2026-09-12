import { IconType } from "react-icons";
import {
  SiFlutter,
  SiDart,
  SiKotlin,
  SiJetpackcompose,
  SiReact,
  SiTypescript,
  SiJavascript,
  SiHtml5,
  SiCss,
  SiTailwindcss,
  SiVite,
  SiNodedotjs,
  SiFirebase,
  SiSupabase,
  SiMongodb,
  SiMysql,
  SiFigma,
  SiGit,
  SiGithub,
  SiAndroidstudio,
  SiNotion,
} from "react-icons/si";
import { Code2, Palette } from "lucide-react";

interface SkillIcon {
  Icon: IconType | typeof Code2;
  color: string;
}

export const skillIcons: Record<string, SkillIcon> = {
  Flutter: { Icon: SiFlutter, color: "#02569B" },
  Dart: { Icon: SiDart, color: "#0175C2" },
  Kotlin: { Icon: SiKotlin, color: "#7F52FF" },
  "Jetpack Compose": { Icon: SiJetpackcompose, color: "#4285F4" },
  "React.js": { Icon: SiReact, color: "#61DAFB" },
  TypeScript: { Icon: SiTypescript, color: "#3178C6" },
  JavaScript: { Icon: SiJavascript, color: "#F7DF1E" },
  HTML: { Icon: SiHtml5, color: "#E34F26" },
  CSS: { Icon: SiCss, color: "#663399" },
  "Tailwind CSS": { Icon: SiTailwindcss, color: "#06B6D4" },
  "Vite.js": { Icon: SiVite, color: "#646CFF" },
  "Node.js": { Icon: SiNodedotjs, color: "#5FA04E" },
  Firebase: { Icon: SiFirebase, color: "#FFCA28" },
  Supabase: { Icon: SiSupabase, color: "#3ECF8E" },
  MongoDB: { Icon: SiMongodb, color: "#47A248" },
  MySQL: { Icon: SiMysql, color: "#4479A1" },
  "VS Code": { Icon: Code2, color: "#007ACC" },
  "Android Studio": { Icon: SiAndroidstudio, color: "#3DDC84" },
  Figma: { Icon: SiFigma, color: "#F24E1E" },
  Canva: { Icon: Palette, color: "#00C4CC" },
  Notion: { Icon: SiNotion, color: "#000000" },
  Git: { Icon: SiGit, color: "#F05032" },
  GitHub: { Icon: SiGithub, color: "#888888" },
};
