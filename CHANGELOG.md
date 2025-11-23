# Changelog

All notable changes to the DTC AI Adoption Strategy Game will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [2.0.0] - 2024-11-22

### 🎉 Major Release - Complete Game Redesign

This version represents a complete overhaul of the game with new mechanics, NPCs, and educational content.

### Added
- **4 Collectible Strategy Components** (Training, Metrics, Change Management, ROI)
- **4 Interactive NPCs** with unique personalities and dialogue
  - Maria (Data Analyst at Zé Ops)
  - Carlos (Operations Manager at TaDa HQ)
  - Sarah (Senior Engineer at PerfectDraft Lab)
  - James (CFO at Conference Room)
- **STATUS Command** - Real-time progress dashboard
- **Multiple Endings** - Perfect, Good, and Partial endings based on strategy completeness
- **AI Adoption Toolkit** - In-game resource library with templates
- **Dynamic Room Descriptions** - Environments change based on progress
- **Component Installation System** - Install strategy pieces in mainframe
- **Graduated Scoring** - 100 point maximum with breakdowns
- **WALKTHROUGH.md** - Comprehensive guide with perfect score path
- **IMPROVEMENTS.md** - Detailed documentation of all enhancements
- **TESTING.md** - Full QA test plan
- **CODE_REVIEW.md** - Comprehensive project review
- **CHANGELOG.md** - Version history (this file)

### Changed
- **Game Title** - Now "DTC AI Adoption Strategy Game" (was "DTC AI Operations Simulation")
- **Win Condition** - Now requires collecting and installing 4 components (was single neural cube)
- **Scoring System** - Increased from 75 to 100 points maximum
- **Room Descriptions** - Greatly enhanced with atmospheric details
- **ASCII Banner** - Updated with "DTC GLOBAL AI HUB" and "Pushing AI Adoption" tagline
- **Educational Focus** - Now teaches real AI adoption strategies with examples
- **HOW_TO_PLAY.md** - Completely rewritten to match new gameplay
- **README.md** - Updated features list, corrected location count

### Fixed
- **Documentation Consistency** - All docs now reflect actual game mechanics
- **Location Count** - Corrected from "7 locations" to "6 locations"
- **Map Accuracy** - Removed non-existent "Rooftop" location
- **Scoring Documentation** - Standardized to 100 points across all files

### Removed
- **Neural Data Cube** - Replaced with 4 distinct strategy components
- **IoT Sensor** - Removed as secondary object
- **Simple Binary Win** - Replaced with graduated endings

---

## [1.0.0] - 2024-11-20

### Initial Release

### Added
- **6 Locations** - Hub, Zé Ops, TaDa HQ, PerfectDraft Lab, Data Center, Conference Room
- **Basic Puzzle** - Collect neural cube and power mainframe
- **Scoring System** - 75 points maximum
- **Web Interface** - Parchment-based browser play
- **Terminal Support** - Frotz compatibility
- **Build System** - Automated compilation with ZILF
- **Documentation** - HOW_TO_PLAY.md, README.md, INSTALL_FROTZ.md
- **ASCII Art Banner** - Custom game intro
- **ZIL Source Code** - Well-structured game files
  - main.zil - Entry point and game loop
  - rooms.zil - Location definitions
  - objects.zil - Object and puzzle logic

### Technical
- Z-machine v3 format
- ZILF 0.11.1 compiler
- Parchment web interpreter integration
- Build automation via bash script

---

## [2.1.0] - 2024-11-22

### Added - Accessibility & Help Systems

This release focuses on making the game more accessible to non-IF players and reducing command-guessing frustration.

#### HELP Command
- **Context-sensitive help** - Shows different commands based on location
- **Smart suggestions** - Highlights special actions available in current room
- **NPC awareness** - Tells you who's present and how to interact
- **Progress integration** - Links to STATUS and HINTS commands

#### HINTS System
- **8 graduated hint levels** - From general to very specific
- **Non-spoiler progression** - Each hint reveals more detail
- **Smart context** - Different hints based on game state
- **Multiple syntaxes** - Works with HINTS, HINT, CLUE, or CLUES

#### Quality of Life
- Increased game size from 37KB to 40KB (+8% for help system)
- Updated HOW_TO_PLAY.md with new features
- Help integrates seamlessly with existing STATUS command

### Design Philosophy
This update embraces the game's role as a **training tool** rather than a hardcore puzzle:
- The challenge should be strategic thinking, not verb guessing
- Non-engineers can now participate more easily
- Learning focus stays on AI adoption strategies
- Parser friction is minimized

---

## [Unreleased] - Future Roadmap

### Planned Features
- [ ] Enhanced web UI with dynamic visuals
- [ ] Real-time location image updates
- [ ] Team member status indicators
- [ ] Component collection checklist in UI
- [ ] Additional puzzles and mini-challenges
- [ ] More NPC interactions and backstories
- [ ] Localization support (Portuguese, Spanish)
- [ ] Mobile-optimized web interface
- [ ] Achievement/badge system
- [ ] Multiplayer or competitive mode
- [ ] Upgrade to Z-machine v5 (better text formatting)

### Possible Improvements
- [ ] Animated ASCII art sequences
- [ ] Sound effects (Z-machine MOD format)
- [ ] Richer environmental storytelling
- [ ] Time-based challenges
- [ ] Random events affecting metrics
- [ ] Difficulty levels
- [ ] New Game+ mode with harder puzzles
- [ ] Integration with actual AB InBev training systems

---

## Version History Summary

| Version | Date | Description | Score | Components | NPCs | Help |
|---------|------|-------------|-------|------------|------|------|
| 2.1.0 | 2024-11-22 | Accessibility update | 100 pts | 4 | 4 | ✅ |
| 2.0.0 | 2024-11-22 | Major redesign | 100 pts | 4 | 4 | ❌ |
| 1.0.0 | 2024-11-20 | Initial release | 75 pts | 1 | 0 | ❌ |

---

## Migration Notes

### Upgrading from 1.0.0 to 2.0.0

**⚠️ Breaking Changes:**
- Old save files will NOT work with 2.0.0
- Game mechanics completely changed
- Object names and locations different
- Win condition redefined

**What Players Need to Know:**
- Read the new HOW_TO_PLAY.md
- Gameplay time increased (30-45 min vs 15 min)
- More strategic depth and replayability
- Multiple endings to discover

**What Developers Need to Know:**
- New global variables (COMPONENTS-INSTALLED, NPC flags)
- New file: status.zil
- Refactored object interactions
- Enhanced room action routines

---

## Contributors

- **Initial Development** - Project kickoff and v1.0.0
- **Major Enhancement** - v2.0.0 redesign with NPCs and strategy components
- **Documentation** - Comprehensive guides and walkthroughs
- **QA & Testing** - Test plan and code review

---

## Acknowledgments

- **Microsoft** - Open-source Zork code (MIT License)
- **Tara McGrew** - ZILF compiler
- **Dannii Willis** - Parchment interpreter
- **Infocom** - Original Zork creators
- **AB InBev DTC Teams** - Operational insights and inspiration

---

## Support

For issues, questions, or contributions:
1. Check TESTING.md for known issues
2. Review HOW_TO_PLAY.md for gameplay questions
3. See README.md for technical documentation
4. Consult CODE_REVIEW.md for improvement opportunities

---

**Current Version:** 2.0.0  
**Release Date:** November 22, 2024  
**Status:** ✅ Production Ready (pending full QA)

