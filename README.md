# tofchaliss.com

Personal site and blog of Franco Chalissery, built with [Zola](https://www.getzola.org)
and the [Duckquill](https://codeberg.org/daudix/duckquill) theme, deployed to GitHub Pages.

## Local development

Install Zola **0.20.0** (the version CI uses; see [installation](https://www.getzola.org/documentation/getting-started/installation/)), then:

```bash
git clone --recurse-submodules https://github.com/tofchaliss/tofchaliss.github.io
cd tofchaliss.github.io
make serve
```

If you already cloned without submodules: `git submodule update --init`.

## Writing a post

```bash
make post title="My New Post"
```

This creates `content/blog/my-new-post.md`. Fill in `description` (shown on the
post list and in link previews) and `tags`.

## Layout

| Path | What it is |
| --- | --- |
| `config.toml` | Site settings: title, nav, footer, colours, CSP, analytics |
| `content/_index.md` | Home page intro (recent posts are added by `templates/index.html`) |
| `content/about.md` | About page |
| `content/blog/` | Blog posts |
| `static/` | Copied as-is to the site root (images, favicons, `CNAME`) |
| `templates/` | Overrides of Duckquill templates |
| `themes/duckquill/` | Theme, a git submodule pinned to v6.3.0 |

`static/sw.js` retires the service worker from the old Jekyll site; it can be
removed a few months after the migration.

## Deployment

Every push to `main` builds the site with GitHub Actions and deploys it to
GitHub Pages (`.github/workflows/pages-deploy.yml`). Pull requests are built
but not deployed.
