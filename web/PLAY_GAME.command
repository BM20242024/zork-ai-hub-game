#!/bin/bash
# DTC AI HUB Game Launcher (Mac/Linux)

cd "$(dirname "$0")"
echo "============================================"
echo "  🍺 DTC AI HUB - Starting Game Server"
echo "============================================"
echo ""
echo "Starting local web server..."
echo "The game will open in your browser..."
echo ""
echo "⚠️  DO NOT CLOSE THIS WINDOW while playing!"
echo "    Press Ctrl+C here when you're done."
echo ""
echo "============================================"
sleep 2

# Open browser
open "http://localhost:8765/game.html" 2>/dev/null || \
xdg-open "http://localhost:8765/game.html" 2>/dev/null || \
echo "Please open: http://localhost:8765/game.html"

# Start server
python3 -m http.server 8765 2>/dev/null || python -m http.server 8765

