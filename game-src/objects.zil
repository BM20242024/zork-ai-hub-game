"DTC AI Zork - Objects"

"=== AI ADOPTION STRATEGY COMPONENTS ==="

<OBJECT TRAINING-MODULE
    (DESC "AI training module")
    (SYNONYM MODULE TRAINING PROGRAM COURSE)
    (ADJECTIVE TRAINING AI INTERACTIVE)
    (IN HUB)
    (FDESC "A glowing training module sits on the main console.")
    (FLAGS TAKEBIT)
    (ACTION TRAINING-MODULE-R)>

<ROUTINE TRAINING-MODULE-R ()
    <COND (<VERB? EXAMINE>
           <TELL "The AI Training Module contains: 'Hands-on workshops, video tutorials, 
practice datasets, and certification paths. Focus on quick wins - teach one powerful 
use case at a time, not everything at once.'" CR>)>>

<OBJECT METRICS-DASHBOARD
    (DESC "success metrics dashboard")
    (SYNONYM DASHBOARD KPI KPIS TABLET)
    (ADJECTIVE SUCCESS)
    (IN ZE-OPS)
    (FDESC "A tablet displaying success metrics lies on a desk.")
    (FLAGS TAKEBIT)
    (ACTION METRICS-R)>

<ROUTINE METRICS-R ()
    <COND (<VERB? EXAMINE>
           <TELL "The Metrics Dashboard shows: 'Track adoption rate, time saved, accuracy 
improvement, and user satisfaction. Zé Delivery saw 40% efficiency gain in first 
month by measuring the right KPIs.'" CR>)>>

<OBJECT CHANGE-GUIDE
    (DESC "change management guide")
    (SYNONYM GUIDE BOOK MANUAL PLAYBOOK)
    (ADJECTIVE CHANGE MANAGEMENT)
    (IN TADA-HQ)
    (FDESC "A change management guide rests on the conference table.")
    (FLAGS TAKEBIT)
    (ACTION CHANGE-GUIDE-R)>

<ROUTINE CHANGE-GUIDE-R ()
    <COND (<VERB? EXAMINE>
           <TELL "The Change Management Guide explains: 'Identify champions early, address 
fears openly, celebrate small wins publicly. TaDa reduced resistance by 60% using 
peer mentors and transparent communication.'" CR>)>>

<OBJECT ROI-CALCULATOR
    (DESC "ROI calculator")
    (SYNONYM CALCULATOR ROI TOOL)
    (ADJECTIVE ROI FINANCIAL)
    (IN PD-LAB)
    (FDESC "An ROI calculator device sits on the workbench.")
    (FLAGS TAKEBIT)
    (ACTION ROI-CALC-R)>

<ROUTINE ROI-CALC-R ()
    <COND (<VERB? EXAMINE>
           <TELL "The ROI Calculator shows: 'Time saved + Error reduction + Scalability = 
Clear business case. PerfectDraft proved 3:1 ROI in 6 months by tracking hours 
saved and quality improvements.'" CR>)>>

<OBJECT WHITEBOARD
    (DESC "whiteboard")
    (SYNONYM WHITEBOARD BOARD FORMULA ALGORITHM)
    (ADJECTIVE OPTIMIZATION COLD BEER)
    (IN ZE-OPS)
    (FDESC "A whiteboard covered in optimization formulas hangs on the wall.")
    (ACTION WHITEBOARD-R)>

<ROUTINE WHITEBOARD-R ()
    <COND (<VERB? EXAMINE READ>
           <TELL "The whiteboard shows 'AI Adoption Insights from Zé Delivery': 
'Start small, show quick wins, measure impact, celebrate success. Teams adopted 
AI routing 3x faster using gamification and peer champions.' Brilliant!" CR>)>>

<OBJECT EXPANSION-MAP
    (DESC "market expansion map")
    (SYNONYM MAP EXPANSION SCREEN)
    (ADJECTIVE MARKET EXPANSION DIGITAL)
    (IN TADA-HQ)
    (FDESC "A large digital map dominates one wall, showing delivery zones.")
    (ACTION MAP-R)>

<ROUTINE MAP-R ()
    <COND (<VERB? EXAMINE READ>
           <TELL "The digital map highlights new expansion zones for TaDa delivery 
across LATAM: Mexico City, Bogotá, Lima, and Quito all show green for 'ready to launch'." CR>)>>

<OBJECT SENSOR-PART
    (DESC "IoT pressure sensor")
    (SYNONYM SENSOR PART COMPONENT)
    (ADJECTIVE IOT PRESSURE SPARE)
    (IN PD-LAB)
    (FDESC "A spare IoT pressure sensor sits on the workbench.")
    (FLAGS TAKEBIT)
    (ACTION SENSOR-R)>

<ROUTINE SENSOR-R ()
    <COND (<VERB? EXAMINE>
           <TELL "This high-precision IoT pressure sensor is crucial for predictive 
maintenance of PerfectDraft machines. It monitors keg pressure in real-time 
and alerts when service is needed." CR>)>>

<GLOBAL COMPONENTS-INSTALLED 0>
<GLOBAL HAS-TRAINING <>>
<GLOBAL HAS-METRICS <>>
<GLOBAL HAS-CHANGE <>>
<GLOBAL HAS-ROI <>>

<OBJECT MAINFRAME
    (DESC "mainframe console")
    (SYNONYM MAINFRAME CONSOLE COMPUTER SYSTEM)
    (ADJECTIVE MAIN CENTRAL AI)
    (IN DATA-CENTER)
    (FDESC "The mainframe console sits in the center of the data center.")
    (ACTION MAINFRAME-R)>

<ROUTINE MAINFRAME-R ()
    <COND (<AND <VERB? PUT-ON> <==? ,PRSI ,MAINFRAME>>
           <COND (<==? ,PRSO ,TRAINING-MODULE>
                  <COND (,HAS-TRAINING
                         <TELL "The training module is already installed." CR>)
                        (ELSE
                         <MOVE ,PRSO ,MAINFRAME>
                         <SETG HAS-TRAINING T>
                         <SETG COMPONENTS-INSTALLED <+ ,COMPONENTS-INSTALLED 1>>
                         <TELL "You install the Training Module. The screen displays: 
'COMPONENT 1/4 INSTALLED - Training framework loaded.'" CR>
                         <SETG SCORE <+ ,SCORE 15>>
                         <CHECK-ALL-COMPONENTS>)>
                  <RTRUE>)
                 (<==? ,PRSO ,METRICS-DASHBOARD>
                  <COND (,HAS-METRICS
                         <TELL "The metrics dashboard is already installed." CR>)
                        (ELSE
                         <MOVE ,PRSO ,MAINFRAME>
                         <SETG HAS-METRICS T>
                         <SETG COMPONENTS-INSTALLED <+ ,COMPONENTS-INSTALLED 1>>
                         <TELL "You install the Metrics Dashboard. The screen displays: 
'COMPONENT 2/4 INSTALLED - Success tracking enabled.'" CR>
                         <SETG SCORE <+ ,SCORE 15>>
                         <CHECK-ALL-COMPONENTS>)>
                  <RTRUE>)
                 (<==? ,PRSO ,CHANGE-GUIDE>
                  <COND (,HAS-CHANGE
                         <TELL "The change guide is already installed." CR>)
                        (ELSE
                         <MOVE ,PRSO ,MAINFRAME>
                         <SETG HAS-CHANGE T>
                         <SETG COMPONENTS-INSTALLED <+ ,COMPONENTS-INSTALLED 1>>
                         <TELL "You install the Change Management Guide. The screen displays: 
'COMPONENT 3/4 INSTALLED - Resistance mitigation active.'" CR>
                         <SETG SCORE <+ ,SCORE 15>>
                         <CHECK-ALL-COMPONENTS>)>
                  <RTRUE>)
                 (<==? ,PRSO ,ROI-CALCULATOR>
                  <COND (,HAS-ROI
                         <TELL "The ROI calculator is already installed." CR>)
                        (ELSE
                         <MOVE ,PRSO ,MAINFRAME>
                         <SETG HAS-ROI T>
                         <SETG COMPONENTS-INSTALLED <+ ,COMPONENTS-INSTALLED 1>>
                         <TELL "You install the ROI Calculator. The screen displays: 
'COMPONENT 4/4 INSTALLED - Business case complete!'" CR>
                         <SETG SCORE <+ ,SCORE 15>>
                         <CHECK-ALL-COMPONENTS>)>
                  <RTRUE>)
                 (ELSE
                  <TELL "That doesn't fit in the mainframe." CR>
                  <RTRUE>)>)
          (<VERB? EXAMINE>
           <COND (<==? ,COMPONENTS-INSTALLED 4>
                  <TELL "The mainframe displays your complete AI Adoption Strategy:
[✓] Training Module - Hands-on learning paths
[✓] Success Metrics - Clear KPIs and dashboards  
[✓] Change Management - Peer champions and communication
[✓] ROI Calculator - Proven business value

STATUS: Ready for final presentation!" CR>)
                 (<G? ,COMPONENTS-INSTALLED 0>
                  <TELL "The mainframe shows: Components installed: " N ,COMPONENTS-INSTALLED "/4" CR>
                  <COND (<NOT ,HAS-TRAINING> <TELL "[ ] Training Module" CR>)>
                  <COND (<NOT ,HAS-METRICS> <TELL "[ ] Success Metrics" CR>)>
                  <COND (<NOT ,HAS-CHANGE> <TELL "[ ] Change Management" CR>)>
                  <COND (<NOT ,HAS-ROI> <TELL "[ ] ROI Calculator" CR>)>)
                 (ELSE
                  <TELL "The mainframe console has 4 slots for strategy components. 
It needs: Training Module, Metrics Dashboard, Change Guide, and ROI Calculator." CR>)>)>>

<ROUTINE CHECK-ALL-COMPONENTS ()
    <COND (<==? ,COMPONENTS-INSTALLED 4>
           <CRLF>
           <TELL "*** ALL COMPONENTS INSTALLED! ***" CR CR>
           <TELL "The mainframe comes alive with data! Your comprehensive AI Adoption 
Strategy is now complete. Time to present it to leadership!" CR>
           <SETG MAINFRAME-POWERED T>)>>

<OBJECT PRESENTATION-SCREEN
    (DESC "presentation screen")
    (SYNONYM SCREEN DISPLAY MONITOR)
    (ADJECTIVE PRESENTATION LARGE)
    (IN CONFERENCE-ROOM)
    (FDESC "A large presentation screen dominates one wall.")
    (ACTION SCREEN-R)>

<GLOBAL ALL-TASKS-DONE <>>

<ROUTINE SCREEN-R ()
    <COND (<VERB? EXAMINE>
           <COND (,ALL-TASKS-DONE
                  <TELL "The screen shows: 'Mission Accomplished! All DTC systems optimized.'" CR>)
                 (<==? ,COMPONENTS-INSTALLED 4>
                  <TELL "The screen shows: 'System Ready. All components loaded. 
Click to present your AI Adoption Strategy.'" CR>)
                 (<G? ,COMPONENTS-INSTALLED 0>
                  <TELL "The screen shows: 'Partial strategy loaded (" N ,COMPONENTS-INSTALLED 
"/4 components). Continue collecting components for full framework.'" CR>)
                 (ELSE
                  <TELL "The screen shows: 'Waiting for AI Adoption Strategy components...'" CR>)>)
          (<AND <VERB? PUSH TURN-ON> <NOT ,ALL-TASKS-DONE>>
           <COND (<==? ,COMPONENTS-INSTALLED 4>
                  <SETG ALL-TASKS-DONE T>
                  <SETG PRESENTATION-READY T>
                  <TELL "You activate the presentation system with ALL 4 components loaded!" CR CR>
                  <TELL "The screen shows your COMPREHENSIVE AI ADOPTION STRATEGY:" CR>
                  <TELL "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" CR>
                  <TELL "✓ TRAINING: Hands-on workshops, quick wins, certification" CR>
                  <TELL "✓ METRICS: 40% efficiency gains, clear ROI tracking" CR>
                  <TELL "✓ CHANGE: Peer champions, 60% resistance reduction" CR>
                  <TELL "✓ ROI: 3:1 return, proven business value" CR>
                  <TELL "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" CR CR>
                  <TELL "The leadership team is amazed! Your comprehensive framework addresses 
every concern. Teams are already signing up for training. Budget is approved. 
Champions are identified. This is exactly what was needed!" CR CR>
                  <TELL "AI ADOPTION METRICS:" CR>
                  <TELL "Team Engagement: 35% → 85%" CR>
                  <TELL "ROI Clarity: Low → Crystal Clear" CR>
                  <TELL "Resistance: High → Minimal" CR>
                  <TELL "Champions Created: 12 across all hubs" CR CR>
                  <SETG SCORE 100>
                  <JIGS-UP "*** PERFECT SCORE! AI CHAMPIONS CREATED! ***">)
                 (<==? ,COMPONENTS-INSTALLED 3>
                  <SETG ALL-TASKS-DONE T>
                  <TELL "You present with 3 out of 4 components..." CR CR>
                  <TELL "The leadership is interested but hesitant. The strategy is strong 
but incomplete. They approve a pilot program for one team, not full rollout." CR CR>
                  <TELL "AI ADOPTION METRICS:" CR>
                  <TELL "Team Engagement: 35% → 65%" CR>
                  <TELL "ROI Clarity: Medium" CR>
                  <TELL "Resistance: Medium" CR CR>
                  <SETG SCORE <+ ,SCORE 40>>
                  <JIGS-UP "*** GOOD PROGRESS - Pilot program approved ***">)
                 (<==? ,COMPONENTS-INSTALLED 2>
                  <SETG ALL-TASKS-DONE T>
                  <TELL "You present with only 2 components..." CR CR>
                  <TELL "Leadership sees potential but the strategy has too many gaps. 
They ask you to come back when you have a complete framework." CR CR>
                  <SETG SCORE <+ ,SCORE 25>>
                  <JIGS-UP "*** PARTIAL SUCCESS - Need more components ***">)
                 (ELSE
                  <TELL "You need to collect strategy components first! The mainframe 
shows you're missing critical pieces of the framework." CR>)>)>>

<OBJECT SATELLITE-DISH
    (DESC "satellite dish")
    (SYNONYM DISH SATELLITE ANTENNA)
    (ADJECTIVE SATELLITE COMMUNICATION)
    (IN ROOFTOP)
    (FDESC "A large satellite dish points toward the sky.")
    (ACTION DISH-R)>

<ROUTINE DISH-R ()
    <COND (<VERB? EXAMINE>
           <TELL "The satellite dish maintains real-time connections with DTC operations 
worldwide. It's currently transmitting data to and from delivery hubs across 
six continents." CR>)>>

<OBJECT LADDER
    (DESC "ladder")
    (SYNONYM LADDER)
    (IN DATA-CENTER)
    (FDESC "A ladder leads up to the rooftop.")
    (ACTION LADDER-R)>

<ROUTINE LADDER-R ()
    <COND (<VERB? EXAMINE>
           <TELL "A sturdy metal ladder leads up to the rooftop access hatch." CR>)
          (<VERB? CLIMB>
           <DO-WALK ,P?UP>)>>

"=== NPCs - TEAM MEMBERS ==="

<OBJECT MARIA
    (DESC "Maria")
    (SYNONYM MARIA ANALYST)
    (ADJECTIVE DATA)
    (IN ZE-OPS)
    (FDESC "Maria, a data analyst, is working at her desk looking frustrated.")
    (ACTION MARIA-R)>

<GLOBAL MARIA-CONVINCED <>>

<ROUTINE MARIA-R ()
    <COND (<VERB? EXAMINE>
           <TELL "Maria is a talented data analyst who's been here 5 years. She looks 
skeptical about new technology. Try talking to her while holding evidence." CR>)
          (<VERB? TELL>
           <COND (,MARIA-CONVINCED
                  <TELL "Maria is now interested in AI! She's already testing the tools." CR>)
                 (<IN? ,METRICS-DASHBOARD ,PLAYER>
                  <TELL "You show Maria the Metrics Dashboard proving 40% efficiency gains." CR CR>
                  <TELL "Maria: 'Wow, those are real numbers from Zé Delivery? That's 
convincing. I tried an AI tool once but it failed, so I went back to Excel. 
But if we track accuracy like this... okay, I'm interested.'" CR>
                  <SETG MARIA-CONVINCED T>
                  <SETG SCORE <+ ,SCORE 5>>)
                 (ELSE
                  <TELL "Maria sighs: 'Another AI initiative? I tried the last AI tool 
and it gave wrong results, so I went back to Excel. Why waste my time again? 
Show me PROOF it actually works.'" CR>)>)>>

<OBJECT CARLOS
    (DESC "Carlos")
    (SYNONYM CARLOS MANAGER)
    (ADJECTIVE BUSY)
    (IN TADA-HQ)
    (FDESC "Carlos, a busy operations manager, is rushing between meetings.")
    (ACTION CARLOS-R)>

<GLOBAL CARLOS-CONVINCED <>>

<ROUTINE CARLOS-R ()
    <COND (<VERB? EXAMINE>
           <TELL "Carlos manages the TaDa expansion team. He's always busy and 
skeptical of anything that takes time away from 'real work'." CR>)
          (<VERB? TELL>
           <COND (,CARLOS-CONVINCED
                  <TELL "Carlos is on board! He's already scheduling training." CR>)
                 (<IN? ,TRAINING-MODULE ,PLAYER>
                  <TELL "You explain the quick-win training approach from the module." CR CR>
                  <TELL "Carlos: 'Wait, so instead of a 3-day course, it's 2 hours and 
they learn ONE use case that saves them 5 hours a week? That's actually smart. 
My team might actually do that. Show me the calendar.'" CR>
                  <SETG CARLOS-CONVINCED T>
                  <SETG SCORE <+ ,SCORE 5>>)
                 (ELSE
                  <TELL "Carlos checks his watch: 'Look, I have 5 meetings today. My 
team is already overloaded. You want them to spend days in training? We don't 
have time for this AI stuff.'" CR>)>)>>

<OBJECT SARAH
    (DESC "Sarah")
    (SYNONYM SARAH ENGINEER)
    (ADJECTIVE SENIOR)
    (IN PD-LAB)
    (FDESC "Sarah, a senior engineer, is enthusiastically working on the draft system.")
    (ACTION SARAH-R)>

<GLOBAL SARAH-HELPED <>>

<ROUTINE SARAH-R ()
    <COND (<VERB? EXAMINE>
           <TELL "Sarah is one of the senior engineers. She's already excited about AI 
but needs direction on how to help others adopt it." CR>)
          (<VERB? TELL>
           <COND (,SARAH-HELPED
                  <TELL "Sarah is mentoring other team members now. She's a natural champion!" CR>)
                 (<IN? ,CHANGE-GUIDE ,PLAYER>
                  <TELL "You share the peer champion approach from the Change Guide." CR CR>
                  <TELL "Sarah lights up: 'YES! That's what I wanted to do but didn't 
know how! Pair me with skeptics, let me show them real examples - I can totally 
do that! Make me a champion, I'll convert the doubters!'" CR>
                  <SETG SARAH-HELPED T>
                  <SETG SCORE <+ ,SCORE 5>>)
                 (ELSE
                  <TELL "Sarah: 'I LOVE AI! I've automated half my work. But when I try 
to explain it to my team, they tune out. They think I'm a geek. How do I actually 
help people who don't get it?'" CR>)>)>>

<OBJECT JAMES
    (DESC "James")
    (SYNONYM JAMES CFO FINANCE)
    (ADJECTIVE CHIEF FINANCIAL)
    (IN CONFERENCE-ROOM)
    (FDESC "James, the CFO, is reviewing budget spreadsheets.")
    (ACTION JAMES-R)>

<GLOBAL JAMES-CONVINCED <>>

<ROUTINE JAMES-R ()
    <COND (<VERB? EXAMINE>
           <TELL "James is the CFO. He controls the AI budget and needs clear ROI 
before approving anything." CR>)
          (<VERB? TELL>
           <COND (,JAMES-CONVINCED
                  <TELL "James has approved the budget! He wants monthly reports." CR>)
                 (<IN? ,ROI-CALCULATOR ,PLAYER>
                  <TELL "You present the ROI Calculator showing PerfectDraft's 3:1 return." CR CR>
                  <TELL "James studies the numbers: 'This is good. Time saved, error 
reduction, scalability... and you're tracking it monthly? If we can prove 3:1 
ROI in 6 months like PerfectDraft, I'll fund it. But I need THESE metrics, 
not vague productivity claims.'" CR>
                  <SETG JAMES-CONVINCED T>
                  <SETG SCORE <+ ,SCORE 5>>)
                 (ELSE
                  <TELL "James: 'Every quarter someone pitches a new tech initiative. 
They all promise amazing results. Most fail. Show me the ROI. Real numbers, 
not promises. Otherwise, no budget.'" CR>)>)>>

"=== RESOURCE LIBRARY ==="

<OBJECT TOOLKIT
    (DESC "AI adoption toolkit")
    (SYNONYM TOOLKIT FOLDER BINDER RESOURCES)
    (ADJECTIVE AI ADOPTION)
    (IN HUB)
    (FDESC "A thick binder labeled 'AI Adoption Toolkit' sits on a shelf.")
    (FLAGS TAKEBIT)
    (ACTION TOOLKIT-R)>

<GLOBAL TOOLKIT-READ <>>

<ROUTINE TOOLKIT-R ()
    <COND (<VERB? EXAMINE READ>
           <COND (,TOOLKIT-READ
                  <TELL "The toolkit contains all the templates you need. You're ready!" CR>)
                 (ELSE
                  <TELL "You open the AI Adoption Toolkit. It contains:" CR CR>
                  <TELL "📋 CHANGE MANAGEMENT CHECKLIST:" CR>
                  <TELL "   □ Identify early adopters and skeptics" CR>
                  <TELL "   □ Create peer champion program" CR>
                  <TELL "   □ Address fears in town halls" CR>
                  <TELL "   □ Celebrate small wins publicly" CR CR>
                  <TELL "📊 TRAINING TEMPLATE:" CR>
                  <TELL "   - Week 1: Hands-on workshop (2 hours)" CR>
                  <TELL "   - Week 2: Practice with real data" CR>
                  <TELL "   - Week 3: Share results with peers" CR CR>
                  <TELL "💰 ROI CALCULATOR GUIDE:" CR>
                  <TELL "   Time Saved + Error Reduction + Scalability = ROI" CR>
                  <TELL "   Track monthly, report quarterly" CR CR>
                  <TELL "📈 SUCCESS STORY EXAMPLES:" CR>
                  <TELL "   'Zé Delivery: 40% faster routing using AI'" CR>
                  <TELL "   'TaDa: 60% less resistance with peer mentors'" CR>
                  <TELL "   'PerfectDraft: 3:1 ROI in 6 months'" CR CR>
                  <TELL "📢 COMMUNICATION PLAN TEMPLATE:" CR>
                  <TELL "   Launch announcement → Quick wins → Progress updates" CR>
                  <SETG TOOLKIT-READ T>
                  <SETG SCORE <+ ,SCORE 5>>)>)>>

