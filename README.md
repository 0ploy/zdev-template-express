# zdev Express Template

A starter template for [zdev](https://github.com/0ploy/zdev) that creates an Express.js project with a working local development environment.

## What's included

- Node.js 22 (Alpine) container
- Express.js hello world app
- HTTPS via zdev's shared Traefik router
- Mutagen file sync (macOS) with node_modules kept inside the container

## Usage

```bash
zdev create express my-app
cd my-app
zdev setup
```

After setup completes, your app is running at `https://my-app.0ploy.dev`.

## What `zdev setup` does

1. Starts the Docker container (`zdev start`)
2. Enables pnpm via corepack
3. Installs dependencies (`pnpm install`)
4. Marks setup as complete - the app starts automatically

All commands can be seen in [.zdev/commands/setup.just](.zdev/commands/setup.just).

## Project structure

```
my-app/
  .zdev/
    config.yaml            # zdev project configuration
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
zdev exec app pnpm add <package>
```

## Requirements

- [zdev](https://github.com/0ploy/zdev) installed
- Docker Desktop running

## Learn more

Want to create your own template? See the [Template Authoring Guide](https://github.com/0ploy/zdev/blob/main/templates/README.md).
