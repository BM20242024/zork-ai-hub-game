# How to Play: DTC AI Adoption Strategy Game

## Getting Started

### Play in Your Browser (Easiest)
1. Open `web/index.html` in any modern web browser
2. The game will load automatically in the Parchment interpreter
3. Start typing commands in the input field at the bottom

### Play Locally with Frotz
1. Install frotz (see INSTALL_FROTZ.md)
2. Run: `frotz build/dtc_zork.z3`

---

## Your Mission

AI adoption is stalling across AB InBev's DTC operations. Teams are skeptical, ROI is unclear, and resistance is high. Your mission:

**Collect 4 strategy components** scattered across global hubs and **convince key stakeholders** to build a comprehensive AI Adoption Plan!

---

## Basic Commands

### Navigation
- `north` (or `n`) - Go north
- `south` (or `s`) - Go south
- `east` (or `e`) - Go east
- `west` (or `w`) - Go west

### Looking Around
- `look` (or `l`) - Examine your surroundings
- `examine [object/person]` - Look closely at something
  - Example: `examine maria` or `examine toolkit`
- `inventory` (or `i`) - Check what you're carrying

### Interacting with Objects
- `take [object]` - Pick up an item
  - Example: `take module` or `take tablet`
- `drop [object]` - Drop an item
- `put [object] on [mainframe]` - Install strategy components
  - Example: `put module on mainframe`
- `read [object]` - Read text
  - Example: `read toolkit`

### Talking to People
- `tell [person]` - Talk to team members
  - **Important:** Hold the right item in inventory when talking!
  - Example: `tell maria` (while holding metrics dashboard)
- `examine [person]` - Get hints about what they need

### Progress Tracking & Help
- `status` (or `progress` or `metrics`) - View your AI adoption dashboard
- `score` - Check your current score
- `help` - **NEW!** Context-sensitive command list
- `hints` (or `hint`) - **NEW!** Graduated hints (8 levels)

### Game Management
- `save` - Save your game
- `restore` - Load a saved game
- `quit` - Exit the game

---

## Quick Start Guide (No Spoilers)

1. **Explore the Hub** - Your starting location
2. **Visit all locations** - There are 6 areas to explore
3. **Collect 4 components** - Training, Metrics, Change Management, ROI
4. **Talk to team members** - Convince 4 key stakeholders
5. **Install components** - Use the mainframe in the Data Center
6. **Present your strategy** - Conference Room when ready

**TIP:** Type `status` frequently to track your progress!

---

## 💡 New: Help & Hints System

### HELP Command
Type `help` anytime to see:
- **Available commands** in your current location
- **Context-sensitive actions** (e.g., "put X on mainframe" when in Data Center)
- **Who's here** and how to talk to them
- **Special actions** available in this room

The HELP command is smart - it shows different options based on where you are!

### HINTS Command
Type `hints` for graduated clues that don't spoil the game:
- **Hint 1:** General goal explanation
- **Hint 2:** Where to look for items
- **Hint 3:** List of all 4 components
- **Hint 4:** How to install in mainframe
- **Hint 5:** Which NPC needs which item
- **Hint 6:** How NPC interaction works
- **Hint 7:** How to trigger the ending
- **Hint 8:** Perfect score strategy

Type `hints` repeatedly to progress through all 8 levels. The hints get more specific each time!

**Pro Tip:** Try solving puzzles yourself first, then use HINTS if stuck!

---

## Locations Map

```
                    Conference Room
                           |
                        [NORTH]
                           |
    Zé Ops ---- [WEST] -- HUB -- [EAST] ---- PerfectDraft Lab
                           |                        |
                        [SOUTH]                  [NORTH]
                           |                        |
                        TaDa HQ              Data Center
```

**6 Locations Total:**
- Global DTC AI Hub (center)
- Zé Delivery Operations (west)
- TaDa Delivery HQ (south)
- PerfectDraft Lab (east)
- Data Center (north of Lab)
- Executive Conference Room (north of Hub)

---

## The 4 Strategy Components

You need to collect all 4 to build a comprehensive AI adoption strategy:

### 1. Training Module
- **Location:** Hub
- **Teaches:** Quick-win learning approach
- **Keywords:** `module`, `training`, `program`

### 2. Metrics Dashboard
- **Location:** Zé Delivery Operations
- **Teaches:** Success tracking & KPIs
- **Keywords:** `dashboard`, `tablet`, `metrics`

### 3. Change Management Guide
- **Location:** TaDa Delivery HQ
- **Teaches:** Peer champion tactics
- **Keywords:** `guide`, `book`, `manual`

### 4. ROI Calculator
- **Location:** PerfectDraft Lab
- **Teaches:** Business case proof
- **Keywords:** `calculator`, `roi`, `tool`

---

## The Team Members

Four key people you need to convince:

### Maria - Data Analyst (Zé Ops)
- **Challenge:** Burned by failed AI tool before
- **Needs:** Proof with real metrics
- **Solution:** `tell maria` while holding Metrics Dashboard
- **Reward:** 5 points

### Carlos - Operations Manager (TaDa HQ)
- **Challenge:** Too busy, no time for long training
- **Needs:** Quick wins, not lengthy courses
- **Solution:** `tell carlos` while holding Training Module
- **Reward:** 5 points

### Sarah - Senior Engineer (PerfectDraft Lab)
- **Challenge:** Loves AI but can't teach skeptics
- **Needs:** Framework for mentoring others
- **Solution:** `tell sarah` while holding Change Management Guide
- **Reward:** 5 points

### James - CFO (Conference Room)
- **Challenge:** Controls budget, needs clear ROI
- **Needs:** Hard numbers, not promises
- **Solution:** `tell james` while holding ROI Calculator
- **Reward:** 5 points

---

## Scoring System

- **15 points** - Each component collected (60 total)
- **5 points** - Each team member convinced (20 total)
- **20 points** - Perfect presentation (all 4 components)

**Maximum Score: 100 points**

### Win Conditions

- **Perfect (100 pts):** All 4 components + all NPCs convinced
  - Result: "AI CHAMPIONS CREATED!" 
  - Team engagement: 85%, Minimal resistance
  
- **Good (80 pts):** 3 components installed
  - Result: Pilot program approved
  - Team engagement: 65%

- **Partial (65 pts):** 2 components installed
  - Result: Come back with complete strategy
  - Leadership wants more

---

## Step-by-Step Walkthrough

### Phase 1: Collect All Components (30-45 minutes)

```
START AT HUB
> take module
> examine module

> west
> take tablet
> examine tablet

> east
> south
> take guide
> examine guide

> north
> east
> take calculator
> examine calculator
```

### Phase 2: Convince Team Members (15-20 minutes)

```
> west
> west
> examine maria
> tell maria    (you have the tablet!)

> east
> south
> examine carlos
> tell carlos   (you have the module!)

> north
> east
> examine sarah
> tell sarah    (you have the guide!)

> west
> north
> examine james
> tell james    (you have the calculator!)
```

### Phase 3: Install Components (10 minutes)

```
> south
> east
> north    (now in Data Center)

> put module on mainframe
> put tablet on mainframe
> put guide on mainframe
> put calculator on mainframe

> examine mainframe    (see all 4 installed!)
```

### Phase 4: Win the Game (5 minutes)

```
> south
> west
> north    (Conference Room)

> push screen    (or: turn on screen)

*** CONGRATULATIONS! ***
AI CHAMPIONS CREATED!
```

---

## Pro Tips

1. **Use STATUS often** - Type `status` to see exactly what you've collected and who you've convinced

2. **Read everything** - Use `examine` on all objects and people for valuable insights

3. **Take notes** - Write down what each person needs before you find the items

4. **Order doesn't matter** - Collect components in any order you like

5. **Talk when ready** - You can talk to NPCs before or after collecting items, but you need the right item in inventory for them to listen

6. **No deaths** - This is a training game, you can't lose or die

7. **Explore freely** - Visit all 6 locations to understand the full DTC ecosystem

8. **Read the toolkit** - Type `read toolkit` in the Hub for real templates and strategies

---

## Common Questions

**Q: How do I talk to NPCs?**  
A: Use `tell [person]` while holding the item they need. Type `examine [person]` for hints.

**Q: I collected all 4 components, now what?**  
A: Go to Data Center and install them: `put [item] on mainframe` (repeat 4 times)

**Q: The screen won't activate!**  
A: You need all 4 components installed in the mainframe first for the perfect ending.

**Q: Can I win with fewer than 4 components?**  
A: Yes! You can present with 2 or 3 components, but you'll get a partial ending.

**Q: Where is the Data Center?**  
A: From Hub, go EAST to PerfectDraft Lab, then NORTH

**Q: How do I check my progress?**  
A: Type `status`, `progress`, or `metrics` for a detailed dashboard

**Q: Can I save my game?**  
A: Yes! Type `save` at any time. (Note: May not work in web version)

---

## Troubleshooting

### Commands don't work
- Check spelling - commands must be exact
- Try simpler commands: `n` instead of `go north`
- Type `help` for in-game assistance

### Can't find an item
- Use `look` to see what's in the current room
- Check `inventory` to see what you're carrying
- Items are in: Hub, Zé Ops, TaDa HQ, PerfectDraft Lab

### NPC won't listen
- Make sure you're holding the correct item
- Check inventory with `i`
- Type `examine [person]` for hints

### Lost or confused
- Type `look` to see where you are
- Type `status` to see your progress
- Refer to the map above
- Use this walkthrough as a guide

---

## Real-World Learning

This game teaches actual AI adoption strategies used at AB InBev:

- **Training** - Quick wins beat lengthy courses (proven at Zé Delivery)
- **Metrics** - Track ROI with real numbers (40% efficiency gains measured)
- **Change** - Use peer champions to reduce resistance (TaDa's 60% improvement)
- **ROI** - Time saved + error reduction + scalability (PerfectDraft's 3:1 return)

These aren't just game mechanics - they're proven tactics from real operations!

---

## Need More Help?

- **WALKTHROUGH.md** - Complete step-by-step guide with full spoilers
- **IMPROVEMENTS.md** - Details on all game features
- **README.md** - Technical information for developers
- **In-game:** Type `help` for commands

---

## Building Your Own Version

Want to modify the game or add content?

1. Edit ZIL files in `game-src/`
2. Run `bash tools/build_game.sh`
3. Test with `frotz build/dtc_zork.z3`
4. See README.md for detailed developer instructions

---

**Have fun building the future of AI adoption!** 🚀

*Remember: The best strategies are comprehensive, measurable, and address both technical AND human challenges.*
