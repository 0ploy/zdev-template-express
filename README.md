# scdev Express Template

A starter template for [scdev](https://github.com/ScaleCommerce-DEV/scdev) that creates an Express.js project with a working local development environment.

## What's included

- Node.js 22 (Alpine) container
- Express.js hello world app
- HTTPS via scdev's shared Traefik router
- Mutagen file sync (macOS) with node_modules kept inside the container

## Usage

```bash
scdev create express my-app
cd my-app
scdev setup
```

After setup completes, your app is running at `https://my-app.scalecommerce.site`.

## What `scdev setup` does

1. Starts the Docker container (`scdev start`)
2. Enables pnpm via corepack
3. Installs dependencies (`pnpm install`)
4. Marks setup as complete - the app starts automatically

All commands can be seen in [.scdev/commands/setup.just](.scdev/commands/setup.just).

## Project structure

```
my-app/
  .scdev/
    config.yaml            # scdev project configuration
    commands/
      setup.just           # Setup script (installs dependencies)
  app.js                   # Express hello world
  package.json             # Dependencies
  .gitignore
```

## Development

The app runs with Node.js `--watch` mode - edit `app.js` and changes are picked up automatically, no restart needed.

To add packages:

```bash
scdev exec app pnpm add <package>
```

## Requirements

- [scdev](https://github.com/ScaleCommerce-DEV/scdev) installed
- Docker Desktop running
