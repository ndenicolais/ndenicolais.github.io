import { ImageResponse } from "next/og";
import { personalInfo } from "@/lib/data";

export const dynamic = "force-static";
export const alt = "Nicola De Nicolais — Mobile, Software & Web Developer";
export const size = { width: 1200, height: 630 };
export const contentType = "image/png";

export default async function Image() {
  return new ImageResponse(
    (
      <div
        style={{
          width: "100%",
          height: "100%",
          display: "flex",
          flexDirection: "column",
          justifyContent: "center",
          padding: "80px",
          backgroundColor: "#0d0d0d",
          backgroundImage:
            "radial-gradient(circle at 80% 20%, rgba(169,132,103,0.35), transparent 55%)",
        }}
      >
        <div
          style={{
            fontSize: 28,
            fontFamily: "monospace",
            color: "#A98467",
            letterSpacing: 2,
          }}
        >
          {personalInfo.location}
        </div>
        <div
          style={{
            fontSize: 72,
            fontWeight: 700,
            color: "#ffffff",
            marginTop: 24,
          }}
        >
          {personalInfo.name}
        </div>
        <div
          style={{
            fontSize: 36,
            fontWeight: 600,
            color: "#A98467",
            marginTop: 16,
          }}
        >
          {personalInfo.role.en}
        </div>
        <div
          style={{
            fontSize: 24,
            color: "#c0c0c0",
            marginTop: 32,
            maxWidth: 900,
          }}
        >
          {personalInfo.tagline.en}
        </div>
      </div>
    ),
    { ...size }
  );
}
