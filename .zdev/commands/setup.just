# Start services and install dependencies

[no-exit-message]
default:
    zdev start -q
    @zdev step "Installing dependencies"
    zdev exec app sh -c "corepack enable && pnpm install && touch .setup-complete"
    @zdev step "Setup complete! App will start automatically."
    zdev info
