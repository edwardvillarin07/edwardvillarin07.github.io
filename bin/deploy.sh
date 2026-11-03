#!/usr/bin/env bash
# Build the site and publish the generated HTML to the gh-pages branch.
#
# GitHub Pages for this repo is configured to serve the prebuilt site from the
# `gh-pages` branch (Settings -> Pages -> Source: Deploy from a branch).
# The `main` branch holds the Jekyll source.
#
# Usage: ./bin/deploy.sh ["commit message"]

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
MSG="${1:-Publish site $(date -u +%Y-%m-%dT%H:%M:%SZ)}"
REMOTE="${REMOTE:-site}"
BRANCH="gh-pages"

cd "$ROOT"

echo "==> Building site"
rm -rf _site
JEKYLL_ENV=production bundle exec jekyll build

touch _site/.nojekyll
echo "doersminds.com" > _site/CNAME

TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

echo "==> Staging build in $TMP"
git clone -q --depth 1 "$(git remote get-url "$REMOTE")" "$TMP/site"
cd "$TMP/site"
git checkout -q --orphan "$BRANCH"
git rm -rqf . >/dev/null 2>&1 || true
cp -a "$ROOT/_site/." .
git add -A
git -c user.name="$(git -C "$ROOT" config user.name || echo 'Doers Minds')" \
    -c user.email="$(git -C "$ROOT" config user.email || echo 'dev@doersminds.com')" \
    commit -qm "$MSG"
# Each deploy is a fresh orphan snapshot of the build output, so the push is forced.
git push -qf origin "$BRANCH"

echo "==> Published to $BRANCH"
