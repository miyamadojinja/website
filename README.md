<div align="center">
  <h1>Miyamado Jinja</h1>
  <img src="https://user-images.githubusercontent.com/7563926/188032576-39503dd9-234c-422f-a5fe-62faaf92df62.jpg" height="300">

[![Netlify Status](https://api.netlify.com/api/v1/badges/a0b88b09-9974-44d2-a536-38524789c3b6/deploy-status)](https://app.netlify.com/sites/miyamadojinja-2022/deploys)

  <p>Miyamado Jinja is a Shinto Shrine located in Yokkaichi, Mie, Japan.</p>
</div>

---

## Requirements

- [Hugo Extended](https://gohugo.io/getting-started/installing/) (`hugo version` should include `extended`)
- [Node.js](https://nodejs.org/) and [npm](https://www.npmjs.com/) (optional, for the local Decap CMS proxy only)

## Development

To start the Hugo development server:

```bash
./scripts/dev.sh
```

This serves the site at `http://localhost:1313` without starting the CMS proxy.

Alternatively:

```bash
./scripts/serve-site.sh
```

For optional local CMS editing (requires Node.js/npm), run separately:

```bash
./scripts/serve-admin.sh
```

You can also open them manually:

```bash
./scripts/open-site.sh
./scripts/open-admin.sh
```

## File Structure

```bash
scripts/                 # Local dev scripts
site/                    # Hugo site root
site/static/admin/       # Decap CMS config and entrypoint
site/assets/css/main.css  # Plain CSS using BEM
```

## Content Management

This project uses [Decap CMS](https://decapcms.org/) for managing site content.

The CMS is loaded via CDN in `/admin/index.html`, and configured via `/admin/config.yml`.
