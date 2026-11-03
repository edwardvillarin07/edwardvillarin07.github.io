# doersminds.com

Source for the **Doers Minds** website, built on the [Chirpy](https://github.com/cotes2020/jekyll-theme-chirpy) Jekyll theme and published with GitHub Pages at <https://doersminds.com>.

## How it works

| Branch | Purpose |
| --- | --- |
| `main` | Jekyll source — content, configuration, tabs |
| `gh-pages` | Prebuilt static site that GitHub Pages actually serves |

GitHub Pages is set to **Deploy from a branch → `gh-pages`**, so publishing does not depend on GitHub Actions minutes.

## Content

- Site settings: [`_config.yml`](_config.yml)
- Sidebar tabs (About, Work, Archives, Categories, Tags): [`_tabs/`](_tabs)
- Posts and case studies: [`_posts/`](_posts)
- Contact icons: [`_data/contact.yml`](_data/contact.yml)

New post front matter:

```yaml
---
title: "Post title"
date: 2026-11-03 09:00:00 +0800
categories: [Case Study]   # drives the Work tab
tags: [tag-one, tag-two]
---
```

Case-study posts use the `Case Study` category, which is what the **Work** tab lists.

## Preview locally

```bash
bundle install
bundle exec jekyll serve
# http://localhost:4000
```

## Publish

```bash
git add -A && git commit -m "Update content"
git push          # source
./bin/deploy.sh   # builds and pushes _site to gh-pages
```

## A note on Actions

`.github/workflows/pages-deploy.yml` can build and deploy from `main` with GitHub Actions, but its `push` trigger is disabled because Actions runs are blocked by a billing issue on the account. Once that is resolved you can re-enable the trigger, switch Pages to **Source: GitHub Actions**, and stop using `bin/deploy.sh`.
