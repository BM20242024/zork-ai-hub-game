# 🍺 DTC AI HUB - Pushing AI Adoption

An interactive text adventure training game for AB InBev's DTC Global AI Operations.

![DTC AI HUB](https://img.shields.io/badge/Status-Ready%20to%20Play-brightgreen)
![Platform](https://img.shields.io/badge/Platform-Web%20Browser-blue)
![License](https://img.shields.io/badge/License-AB%20InBev-orange)

## 🎮 Play the Game

**Live Demo:** [Play Now!](#) *(Add your Vercel URL here after deployment)*

## 📖 About

This is an interactive fiction game built using Microsoft's open-source Zork code. Players navigate through DTC AI operations centers, collect AI strategy components, convince team members, and present a unified plan to drive AI adoption across the organization.

### Game Features

- 🗺️ **7 Unique Locations** - Explore global DTC hubs
- 🧩 **4 Strategy Components** - Collect Training, Metrics, Change Management, and ROI tools
- 👥 **4 Interactive NPCs** - Convince team members to join your cause
- 🎯 **Multiple Endings** - Based on your choices and completion level
- 📊 **Live Progress Dashboard** - Track your adoption metrics with `STATUS` command
- 💡 **Built-in Help System** - Type `HELP` for commands, `HINTS` for graduated clues
- 🏆 **Scoring System** - Achieve the perfect score of 100 points!

## 🚀 Quick Start

### Play Online (Recommended)
Just visit the live demo link above - no installation needed!

### Play Locally

#### Option 1: With Server (Web Version)
```bash
# Clone the repository
git clone https://github.com/YOUR_USERNAME/zork-ai-hub-game.git
cd zork-ai-hub-game

# Start local server
python3 -m http.server 8000

# Open browser to: http://localhost:8000/web/game.html
```

#### Option 2: Terminal (Frotz)
```bash
# Install Frotz
brew install frotz  # Mac
# or
sudo apt-get install frotz  # Linux

# Play the game
frotz build/dtc_zork.z3
```

## 📝 Game Commands

- `help` - See all available commands
- `hints` - Get graduated clues (8 levels)
- `status` - View your progress dashboard
- `look` - Examine your surroundings
- `take [item]` - Pick up objects
- `tell [person]` - Talk to team members
- `north/south/east/west` - Navigate
- `save` - Save your progress
- `restore` - Load saved game

## 🎯 Mission

The teams are struggling with AI adoption. Low engagement, unclear ROI, and resistance to change are holding back progress. Your mission:

1. Explore 7 global DTC AI hubs
2. Collect 4 AI strategy components
3. Convince 4 team members to support your plan
4. Install components in the mainframe
5. Present your unified AI adoption strategy!

## 🏆 Scoring

- **60 points** - Collect all 4 strategy components
- **20 points** - Convince all 4 team members
- **20 points** - Successfully present your strategy
- **100 points** - Perfect score = Complete AI adoption plan!

## 🛠️ Tech Stack

- **Game Engine:** ZILF (ZIL Forever) - Open-source Z-machine compiler
- **Web Player:** Parchment - JavaScript Z-machine interpreter
- **Language:** ZIL (Zork Implementation Language)
- **Version:** Z-machine version 3
- **Build System:** ZILF 0.11.1 + ZAPF

## 📂 Project Structure

```
├── game-src/          # ZIL source code
│   ├── main.zil       # Entry point
│   ├── rooms.zil      # Location definitions
│   ├── objects.zil    # Items and NPCs
│   └── status.zil     # Status, help, hints systems
├── web/               # Web version files
│   ├── game.html      # Main game page
│   ├── parchment.html # Game engine
│   └── dtc_zork.z3    # Compiled game
├── build/             # Build output
└── tools/             # Development tools
```

## 🔨 Building from Source

```bash
# Compile the game
bash tools/build_game.sh

# Output: build/dtc_zork.z3
```

## 📖 Documentation

- **[HOW_TO_PLAY.md](HOW_TO_PLAY.md)** - Complete walkthrough
- **[WALKTHROUGH.md](WALKTHROUGH.md)** - Step-by-step guide
- **[HELP_SYSTEM.md](HELP_SYSTEM.md)** - Help & hints documentation
- **[CHANGELOG.md](CHANGELOG.md)** - Version history

## 🎓 Educational Use

This game is designed for internal AB InBev training to:
- Educate teams about AI adoption challenges
- Teach strategic thinking for organizational change
- Demonstrate the importance of data-driven decision making
- Encourage cross-functional collaboration
- Make learning interactive and engaging

## 🤝 Contributing

This is an internal AB InBev training tool. For questions or feedback, contact the DTC Global AI team.

## 📜 License

Built with Microsoft's open-source Zork code. © 2025 AB InBev - Internal Training Use

## 🙏 Credits

- **Original Zork** - Marc Blank, Dave Lebling, Tim Anderson, Bruce Daniels (Infocom)
- **ZILF Compiler** - Jesse McGrew
- **Parchment** - Dannii Willis
- **Game Design & Content** - AB InBev DTC Global AI Hub

---

**Ready to push AI adoption?** Start playing now! 🚀

