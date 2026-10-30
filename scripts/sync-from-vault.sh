#!/bin/zsh
# Copy images from the Obsidian Registry vault into this site, resized for the web.
# Source layout:  <vault>/Portfolio/Images/<project-slug>/*.{jpg,jpeg,png,heic}
# Output:         assets/images/<project-slug>/*.jpg  (max 1600px wide)
# Originals are never modified or moved.
set -eu
VAULT="$HOME/Library/Mobile Documents/iCloud~md~obsidian/Documents/Registry/Portfolio/Images"
DEST="$(cd "$(dirname "$0")/.." && pwd)/assets/images"
[ -d "$VAULT" ] || { echo "No vault folder at $VAULT"; exit 1; }
setopt null_glob
for dir in "$VAULT"/*/; do
  slug=${dir:t}
  mkdir -p "$DEST/$slug"
  for f in "$dir"*.{jpg,jpeg,JPG,JPEG,png,PNG,heic,HEIC}; do
    out="$DEST/$slug/$(basename "${f%.*}" | tr ' ' '-' | tr 'A-Z' 'a-z').jpg"
    sips -s format jpeg -s formatOptions 82 --resampleWidth 1600 "$f" --out "$out" >/dev/null
    echo "$slug: ${out:t}"
  done
done
