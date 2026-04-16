# Start services and install dependencies

[no-exit-message]
default:
    scdev start -q
    @scdev step "Installing dependencies"
    scdev exec app sh -c "corepack enable && pnpm install && touch .setup-complete"
    @scdev step "Setup complete! App will start automatically."
    scdev info
