# doersminds.com

Source for the **Doers Minds** website, built on the [Academic Pages](https://github.com/academicpages/academicpages.github.io) Jekyll template and published with GitHub Pages at <https://doersminds.com>.

## How it works

| Branch | Purpose |
| --- | --- |
| `main` | Jekyll source — content, layouts, styles, configuration |
| `gh-pages` | Prebuilt static site that GitHub Pages actually serves |

GitHub Pages is set to **Deploy from a branch → `gh-pages`**. Because the site is prebuilt, publishing does not depend on GitHub Actions minutes.

## Editing content

- Site-wide settings: [`_config.yml`](_config.yml)
- Menu: [`_data/navigation.yml`](_data/navigation.yml)
- Home page: [`_pages/about.md`](_pages/about.md)
- Work / portfolio entries: [`_portfolio/`](_portfolio)
- Blog posts: [`_posts/`](_posts)

## Preview locally

```bash
bundle install
bundle exec jekyll serve -l
# http://localhost:4000
```

## Publish

```bash
git add -A && git commit -m "Update content"
git push          # source
./bin/deploy.sh   # builds and pushes _site to gh-pages
```

## A note on Actions

`.github/workflows/jekyll.yml` can build and deploy directly from `main` with GitHub Actions. It is currently unused because Actions runs are blocked by a billing issue on the account; once that is resolved you can switch Pages to **Source: GitHub Actions** and stop using `bin/deploy.sh`.
