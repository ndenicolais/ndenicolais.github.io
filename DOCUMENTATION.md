# Documentation

Technical reference for the portfolio website. Requirements and setup are in the [README](README.md#build-from-source).

## Architecture

- `src/app/`: Next.js App Router entry points, metadata, sitemap, robots, and global styles.
- `src/components/`: reusable page sections and interactive UI components.
- `src/context/`: client-side providers for theme and language preferences. The site defaults to English; the language is saved in `localStorage` (`lang-choice`) only when the visitor uses the toggle.
- `src/lib/data.ts`: centralized portfolio content, projects, skills, experience, education, and hobbies.
- `src/lib/apps.ts`: content of the app pages (`AppPage` entries) and their shared UI labels.
- `src/lib/markdown.ts` + `src/components/MarkdownContent.tsx`: minimal Markdown parser/renderer for static legal pages.
- `src/content/`: Markdown sources read at build time (`<slug>-privacy.md`).
- `public/`: static images, logo, and icons.

The favicon, Apple icon and Open Graph image come from `public/logo.png` (referenced in `src/app/layout.tsx`) and `src/app/opengraph-image.tsx`. Do not add `src/app/favicon.ico`: Next.js would use it instead of the custom logo.

## App pages

Each published app gets a public homepage and privacy policy on this domain: apps with "Sign in with Google" need them for the Google OAuth consent screen (authorized domain `ndenicolais.github.io`, verified in Search Console), apps on Google Play use them as the store privacy policy URL. Both pages are rendered by shared components: `AppHome` (homepage) and `AppPrivacy` (privacy policy).

| App | Routes | Content | Images |
|---|---|---|---|
| Shox | `/shox/`, `/shox/privacy/` | `shoxApp` in `src/lib/apps.ts`, `src/content/shox-privacy.md` | `public/images/shox/` |
| QRation | `/qration/`, `/qration/privacy/` | `qrationApp` in `src/lib/apps.ts`, `src/content/qration-privacy.md` | `public/images/qration/` |
| Fivelink | `/fivelink/`, `/fivelink/privacy/` | `fivelinkApp` in `src/lib/apps.ts`, `src/content/fivelink-privacy.md` | `public/images/fivelink/` |
| Noteep | `/noteep/`, `/noteep/privacy/` | `noteepApp` in `src/lib/apps.ts`, `src/content/noteep-privacy.md` | `public/images/noteep/` |

To add an app: add an `AppPage` entry in `src/lib/apps.ts`, copy its `PRIVACY.md` to `src/content/<slug>-privacy.md`, create `src/app/<slug>/page.tsx` and `src/app/<slug>/privacy/page.tsx` like the existing ones, add both URLs to `src/app/sitemap.ts` and set `pageUrl` on the project in `src/lib/data.ts`.

- `lang: "en"` fixes the page language and hides the toggle (QRation, Fivelink and Noteep: Google requires an English homepage, so the static HTML must be in English).
- `preview` is also used as the image of the project card in `src/lib/data.ts`, so the homepage and the app page always show the same preview (1600×900 PNG, resized from the app repository's 2400×1350 original).
- `privacyNotice` shows a data statement (e.g. the Google account data used by QRation and Noteep) followed by the full privacy URL.
- `downloadUrl` is optional: without it the page shows "Coming soon on Google Play" instead of the download button (Fivelink, while in closed testing).
- `src/content/<slug>-privacy.md` is a verbatim copy of `PRIVACY.md` from the app repository: when that file changes, copy it here again and redeploy.
- The Search Console verification file (`googleXXXXXXXX.html`) belongs in `public/` and must never be removed.

## Local development

```bash
npm ci
npm run dev
```

Use `npm run lint` for ESLint checks and `npm run build` to verify the static production export in `out/` (`npx serve out` previews it locally).

## Contact form

`src/components/Contact.tsx` sends messages with EmailJS (Gmail service, "Contact Us" template using `{{name}}`, `{{email}}` and `{{message}}`). The keys are read at build time from `NEXT_PUBLIC_EMAILJS_SERVICE_ID`, `NEXT_PUBLIC_EMAILJS_TEMPLATE_ID` and `NEXT_PUBLIC_EMAILJS_PUBLIC_KEY`: locally from `.env.local` (see `.env.local.example`), in CI from the repository secrets (Settings → Secrets and variables → Actions → Repository secrets, not environment secrets, because only the `build` job reads them). Without the keys the build drops the EmailJS code and the form opens a `mailto:` link instead.

## Deployment

The workflow in `.github/workflows/deploy.yml` runs on pushes to `main`, builds the Next.js static export, uploads `out/` as a Pages artifact, and deploys it to GitHub Pages. `next.config.ts` enables `output: "export"`, trailing slashes, and unoptimized images because GitHub Pages has no Next.js image optimization server.

The live site is [ndenicolais.github.io](https://ndenicolais.github.io). If the domain changes, update the absolute URLs in `src/app/layout.tsx` (`metadataBase`), `src/app/sitemap.ts` and `src/app/robots.ts`.
