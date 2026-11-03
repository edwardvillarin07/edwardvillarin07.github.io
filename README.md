# doersminds.com

Source for the **Doers Minds** website, built on the [Chirpy](https://github.com/cotes2020/jekyll-theme-chirpy) Jekyll theme and published with GitHub Pages at <https://doersminds.com>.

## How it works

| Branch | Purpose |
| --- | --- |
| `main` | Jekyll source — content, configuration, tabs |
| `gh-pages` | Legacy prebuilt output, kept as an emergency fallback only |

GitHub Pages is set to **Source: GitHub Actions**. Every push to `main` runs `.github/workflows/pages-deploy.yml`, which builds the site, runs `htmlproofer`, and deploys it to <https://doersminds.com>.

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
git push          # GitHub Actions builds and deploys automatically
```

Watch the run with `gh run watch -R edwardvillarin07/edwardvillarin07.github.io`.

## Emergency fallback

If Actions is ever unavailable, `bin/deploy.sh` builds locally and pushes the result to the `gh-pages` branch. To use it you must also switch **Settings → Pages → Source** back to *Deploy from a branch → `gh-pages`*.
