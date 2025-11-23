#!/bin/bash
set -e

# Directory setup
PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TOOLS_DIR="$PROJECT_ROOT/tools"
ZILF_BIN="$TOOLS_DIR/zilf/bin/zilf"
ZAPF_BIN="$TOOLS_DIR/zilf/bin/zapf"
ZILLIB="$TOOLS_DIR/zilf/zillib"
GAME_SRC="$PROJECT_ROOT/game-src"
BUILD_DIR="$PROJECT_ROOT/build"

# Check compiler
if [ ! -f "$ZILF_BIN" ]; then
    echo "Compiler not found at $ZILF_BIN"
    echo "Please install ZILF first."
    exit 1
fi

mkdir -p "$BUILD_DIR"

echo "Compiling game..."
# Compile ZIL to ZAP (assembly) with library path
"$ZILF_BIN" -w -ip "$ZILLIB" "$GAME_SRC/main.zil" "$BUILD_DIR/game.zap"

echo "Assembling game..."
# Assemble ZAP to Z3 (story file)
"$ZAPF_BIN" "$BUILD_DIR/game.zap" "$BUILD_DIR/dtc_zork.z3"

echo ""
echo "✓ Build complete: $BUILD_DIR/dtc_zork.z3"
echo ""
echo "To play the game, run:"
echo "  frotz $BUILD_DIR/dtc_zork.z3"
echo ""

