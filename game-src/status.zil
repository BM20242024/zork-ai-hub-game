"Status and Metrics Commands"

<ROUTINE V-STATUS ()
    <TELL "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" CR>
    <TELL "        AI ADOPTION PROGRESS DASHBOARD" CR>
    <TELL "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" CR CR>
    
    <TELL "STRATEGY COMPONENTS: " N ,COMPONENTS-INSTALLED "/4" CR>
    <COND (,HAS-TRAINING 
           <TELL "  ✓ Training Module - Collected" CR>)
          (ELSE 
           <TELL "  ✗ Training Module - Not found" CR>)>
    <COND (,HAS-METRICS 
           <TELL "  ✓ Metrics Dashboard - Collected" CR>)
          (ELSE 
           <TELL "  ✗ Metrics Dashboard - Not found" CR>)>
    <COND (,HAS-CHANGE 
           <TELL "  ✓ Change Guide - Collected" CR>)
          (ELSE 
           <TELL "  ✗ Change Guide - Not found" CR>)>
    <COND (,HAS-ROI 
           <TELL "  ✓ ROI Calculator - Collected" CR>)
          (ELSE 
           <TELL "  ✗ ROI Calculator - Not found" CR>)>
    
    <CRLF>
    <TELL "TEAM ENGAGEMENT:" CR>
    <COND (,MARIA-CONVINCED 
           <TELL "  ✓ Maria (Data Analyst) - Convinced!" CR>)
          (ELSE 
           <TELL "  ✗ Maria (Data Analyst) - Skeptical" CR>)>
    <COND (,CARLOS-CONVINCED 
           <TELL "  ✓ Carlos (Operations Manager) - On board!" CR>)
          (ELSE 
           <TELL "  ✗ Carlos (Operations Manager) - Too busy" CR>)>
    <COND (,SARAH-HELPED 
           <TELL "  ✓ Sarah (Senior Engineer) - Champion activated!" CR>)
          (ELSE 
           <TELL "  ✗ Sarah (Senior Engineer) - Needs direction" CR>)>
    <COND (,JAMES-CONVINCED 
           <TELL "  ✓ James (CFO) - Budget approved!" CR>)
          (ELSE 
           <TELL "  ✗ James (CFO) - Wants ROI proof" CR>)>
    
    <CRLF>
    <TELL "ADOPTION METRICS:" CR>
    <COND (<==? ,COMPONENTS-INSTALLED 4>
           <TELL "  Team Engagement: 85%" CR>
           <TELL "  ROI Clarity: Crystal Clear" CR>
           <TELL "  Resistance: Minimal" CR>)
          (<==? ,COMPONENTS-INSTALLED 3>
           <TELL "  Team Engagement: 65%" CR>
           <TELL "  ROI Clarity: Medium" CR>
           <TELL "  Resistance: Medium" CR>)
          (<G? ,COMPONENTS-INSTALLED 0>
           <TELL "  Team Engagement: " N <* ,COMPONENTS-INSTALLED 15> 25 "%" CR>
           <TELL "  ROI Clarity: Developing..." CR>
           <TELL "  Resistance: High" CR>)
          (ELSE
           <TELL "  Team Engagement: 35%" CR>
           <TELL "  ROI Clarity: Low" CR>
           <TELL "  Resistance: High" CR>)>
    
    <CRLF>
    <TELL "CURRENT SCORE: " N ,SCORE "/" N 
          <COND (<==? ,COMPONENTS-INSTALLED 4> 100)
                (<==? ,COMPONENTS-INSTALLED 3> 80)
                (ELSE 120)> CR>
    
    <COND (<AND <==? ,COMPONENTS-INSTALLED 4> 
                ,MARIA-CONVINCED ,CARLOS-CONVINCED 
                ,SARAH-HELPED ,JAMES-CONVINCED>
           <CRLF>
           <TELL "🎉 READY FOR PRESENTATION! Head to Conference Room!" CR>)
          (<==? ,COMPONENTS-INSTALLED 4>
           <CRLF>
           <TELL "💡 TIP: Talk to team members with the strategy components!" CR>)
          (ELSE
           <CRLF>
           <TELL "📍 NEXT: Find more strategy components across the hubs!" CR>)>
    
    <TELL "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" CR>
    <RTRUE>>

<SYNTAX STATUS = V-STATUS>
<SYNTAX PROGRESS = V-STATUS>
<SYNTAX METRICS = V-STATUS>

"=== HELP SYSTEM ==="

<ROUTINE V-HELP ()
    <TELL "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" CR>
    <TELL "             AVAILABLE COMMANDS" CR>
    <TELL "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" CR CR>
    
    <TELL "MOVEMENT:" CR>
    <TELL "  north, south, east, west (or n, s, e, w)" CR>
    <COND (<==? ,HERE ,HUB>
           <TELL "  → From Hub: north, south, east, west" CR>)>
    <COND (<==? ,HERE ,PD-LAB>
           <TELL "  → From here: north to Data Center, west to Hub" CR>)>
    <COND (<==? ,HERE ,DATA-CENTER>
           <TELL "  → From here: south to PerfectDraft Lab" CR>)>
    <CRLF>
    
    <TELL "LOOKING AROUND:" CR>
    <TELL "  look (or l) - Examine your surroundings" CR>
    <TELL "  examine [object/person] - Look closely" CR>
    <TELL "  inventory (or i) - Check what you're carrying" CR>
    <CRLF>
    
    <TELL "INTERACTING WITH OBJECTS:" CR>
    <TELL "  take [object] - Pick up an item" CR>
    <TELL "  drop [object] - Put down an item" CR>
    <COND (<==? ,HERE ,DATA-CENTER>
           <TELL "  put [component] on mainframe - Install strategy piece" CR>)>
    <TELL "  read [object] - Read text (like toolkit)" CR>
    <CRLF>
    
    <TELL "TALKING TO PEOPLE:" CR>
    <TELL "  tell [person] - Talk to team member" CR>
    <TELL "  examine [person] - Get hints about what they need" CR>
    <COND (<OR <==? ,HERE ,ZE-OPS> <==? ,HERE ,TADA-HQ> 
               <==? ,HERE ,PD-LAB> <==? ,HERE ,CONFERENCE-ROOM>>
           <TELL "  → Someone is here! Try: tell [their name]" CR>)>
    <CRLF>
    
    <COND (<==? ,HERE ,CONFERENCE-ROOM>
           <TELL "SPECIAL ACTIONS HERE:" CR>
           <TELL "  push screen (or turn on screen) - Start presentation" CR>
           <CRLF>)>
    
    <TELL "PROGRESS & META:" CR>
    <TELL "  status (or progress/metrics) - View dashboard" CR>
    <TELL "  hints - Get graduated hints" CR>
    <TELL "  score - Check your score" CR>
    <TELL "  save - Save your game" CR>
    <TELL "  restore - Load saved game" CR>
    <TELL "  quit - Exit game" CR>
    
    <TELL "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" CR>
    <CRLF>
    <TELL "💡 TIP: Type STATUS to see your progress anytime!" CR>
    <RTRUE>>

<SYNTAX HELP = V-HELP>

"=== HINTS SYSTEM ==="

<GLOBAL HINT-LEVEL 0>

<ROUTINE V-HINTS ()
    <COND (<==? ,COMPONENTS-INSTALLED 4>
           <COND (,PRESENTATION-READY
                  <TELL "🎉 You've won! There are no more hints needed." CR>
                  <RTRUE>)
                 (<AND ,MARIA-CONVINCED ,CARLOS-CONVINCED ,SARAH-HELPED ,JAMES-CONVINCED>
                  <TELL "💡 HINT: You have all components and all team members convinced!" CR>
                  <TELL "Head to the Conference Room (north from Hub) and PUSH SCREEN!" CR>
                  <RTRUE>)
                 (ELSE
                  <TELL "💡 HINT: You have all 4 components installed!" CR>
                  <TELL "Try talking to team members while holding their needed items." CR>
                  <TELL "Then present in the Conference Room!" CR>
                  <RTRUE>)>)>
    
    <SETG HINT-LEVEL <+ ,HINT-LEVEL 1>>
    
    <COND (<==? ,HINT-LEVEL 1>
           <TELL "💡 HINT 1: Your goal is to collect 4 strategy components." CR>
           <TELL "Type HINTS again for more help." CR>)
          
          (<==? ,HINT-LEVEL 2>
           <TELL "💡 HINT 2: Look for items in each location." CR>
           <TELL "Try: Hub, Zé Ops (west), TaDa HQ (south), PerfectDraft Lab (east)" CR>
           <TELL "Type HINTS again for more help." CR>)
          
          (<==? ,HINT-LEVEL 3>
           <TELL "💡 HINT 3: The 4 components are:" CR>
           <TELL "  - Training Module (Hub)" CR>
           <TELL "  - Metrics Dashboard (Zé Ops)" CR>
           <TELL "  - Change Management Guide (TaDa HQ)" CR>
           <TELL "  - ROI Calculator (PerfectDraft Lab)" CR>
           <TELL "Type HINTS again for more help." CR>)
          
          (<==? ,HINT-LEVEL 4>
           <TELL "💡 HINT 4: After collecting components, install them in the mainframe." CR>
           <TELL "The mainframe is in the Data Center (north from PerfectDraft Lab)." CR>
           <TELL "Use: PUT [component] ON MAINFRAME" CR>
           <TELL "Type HINTS again for more help." CR>)
          
          (<==? ,HINT-LEVEL 5>
           <TELL "💡 HINT 5: Talk to team members to get them on board!" CR>
           <TELL "  - Maria (Zé Ops) needs the Metrics Dashboard" CR>
           <TELL "  - Carlos (TaDa HQ) needs the Training Module" CR>
           <TELL "  - Sarah (PerfectDraft Lab) needs the Change Guide" CR>
           <TELL "  - James (Conference Room) needs the ROI Calculator" CR>
           <TELL "Type HINTS again for more help." CR>)
          
          (<==? ,HINT-LEVEL 6>
           <TELL "💡 HINT 6: When talking to NPCs, you must have the right item in inventory!" CR>
           <TELL "Check inventory with I, then go TELL [person]" CR>
           <TELL "Type HINTS again for more help." CR>)
          
          (<==? ,HINT-LEVEL 7>
           <TELL "💡 HINT 7: After installing all 4 components, go to Conference Room." CR>
           <TELL "PUSH SCREEN (or TURN ON SCREEN) to start your presentation!" CR>
           <TELL "Type HINTS again for more help." CR>)
          
          (<==? ,HINT-LEVEL 8>
           <TELL "💡 HINT 8: For the perfect ending:" CR>
           <TELL "  1. Collect all 4 components (60 points)" CR>
           <TELL "  2. Convince all 4 NPCs (20 points)" CR>
           <TELL "  3. Install all 4 in mainframe" CR>
           <TELL "  4. Present in Conference Room (20 points)" CR>
           <TELL "Type HINTS again for more help." CR>)
          
          (ELSE
           <TELL "💡 FINAL HINT: Type STATUS to see exactly what you need!" CR>
           <TELL "Your progress dashboard shows:" CR>
           <TELL "  - Which components you've collected" CR>
           <TELL "  - Which NPCs are convinced" CR>
           <TELL "  - Your current score" CR>
           <TELL "  - Next steps to take" CR>
           <CRLF>
           <TELL "Need more help? Check HOW_TO_PLAY.md or WALKTHROUGH.md!" CR>)>
    
    <RTRUE>>

<SYNTAX HINTS = V-HINTS>
<SYNTAX HINT = V-HINTS>
<SYNTAX CLUE = V-HINTS>
<SYNTAX CLUES = V-HINTS>

