# Start services and install dependencies

default:
    scdev start
    scdev exec app sh -c "COREPACK_ENABLE_DOWNLOAD_PROMPT=0 corepack enable && pnpm install && touch .setup-complete"
    echo ""
    echo "Setup complete! App will start automatically."
    scdev info
