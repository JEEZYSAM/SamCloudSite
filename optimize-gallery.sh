#!/bin/zsh
# optimize-gallery.sh
# Batch convert all .jpg images in static/gallery/ to .webp (quality 80, skip if .webp exists)

GALLERY_DIR="$(dirname "$0")/static/gallery"

if ! command -v cwebp >/dev/null 2>&1; then
  echo "Error: cwebp not found. Install with: brew install webp"
  exit 1
fi

cd "$GALLERY_DIR" || exit 1

for img in *.jpg; do
  webp="${img%.jpg}.webp"
  if [[ -f "$webp" ]]; then
    echo "Skipping $img (already optimized)"
  else
    echo "Optimizing $img -> $webp"
    cwebp -q 80 "$img" -o "$webp"
  fi
done

echo "All .jpg images in $GALLERY_DIR are now optimized as .webp."

# Also optimize hero background if it exists
HERO_BG="$(dirname "$0")/static/background1.jpg"
if [[ -f "$HERO_BG" ]]; then
  HERO_WEBP="$(dirname "$0")/static/background1.webp"
  if [[ ! -f "$HERO_WEBP" ]]; then
    echo "Optimizing hero background1.jpg -> background1.webp"
    cwebp -q 80 "$HERO_BG" -o "$HERO_WEBP"
  else
    echo "Hero background already optimized."
  fi
fi
