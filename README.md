# Portfolio — John Ryan Myrdal

Live: https://jmyrdal.github.io/ · Static HTML/CSS, hosted free on GitHub Pages. No build step.

## Structure
```
index.html              home page (hero, projects, experience, Q, skills, contact)
css/  js/               styles and scripts
projects/<slug>/        one page per project (added as write-ups are finished)
assets/images/<slug>/   web-sized images, one folder per project
assets/video/  docs/    short clips (<25 MB) and public PDFs
content/projects/*.md   project write-up drafts (source text)
scripts/                helper scripts
```
Project slugs: shoal, q-ecosystem, scout, electric-guitar, self-watering-planter, robotic-arm, q-ecosystem.

## Source of truth
Drafts, notes, and original images live in the Obsidian **Registry** vault under `Portfolio/`.
Only web-sized copies and finished text are committed here. Nothing else from the vault is published.
Run `scripts/sync-from-vault.sh` to resize and copy vault images into `assets/images/`.

## Rules
- Originals never go in this repo (it is public). Keep each image under ~500 KB.
- Personal and school projects only. No employer or Makai/DARPA material on the site.
- Commit messages: short, imperative (`Add SCOUT gallery`).
