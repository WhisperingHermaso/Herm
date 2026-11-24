#!/usr/bin/env bash
# Wraps each game's game.html into a standalone index.html that a phone can
# install to its home screen when hosted (e.g. GitHub Pages).
set -euo pipefail
cd "$(dirname "$0")"

wrap() { # wrap <dir> <app title> <extra head html> <extra body-end html>
  local dir=$1 title=$2 head=$3 tail=$4
  {
    cat <<HEAD
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover,user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<meta name="apple-mobile-web-app-title" content="$title">
$head
<style>*,*::before,*::after{box-sizing:border-box}body{margin:0}[hidden]{display:none!important}</style>
</head>
<body>
HEAD
    cat "$dir/game.html"
    printf '%s\n</body>\n</html>\n' "$tail"
  } > "$dir/index.html"
  echo "Built $dir/index.html"
}

wrap . "Herm" \
  '<meta name="theme-color" content="#2b2350"><link rel="manifest" href="manifest.webmanifest"><link rel="icon" href="icon.svg" type="image/svg+xml"><link rel="apple-touch-icon" href="icon.svg">' \
  "<script>if ('serviceWorker' in navigator) navigator.serviceWorker.register('sw.js').catch(() => {});</script>"

wrap flop "Bird Simulator" \
  '<meta name="theme-color" content="#3d9fb8"><link rel="apple-touch-icon" href="parts/head.webp">' \
  ''
