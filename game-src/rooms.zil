"DTC AI Zork - Rooms"

<ROOM HUB
      (DESC "Global DTC AI Hub")
      (IN ROOMS)
      (LDESC "You stand in the nerve center of AB InBev's DTC AI operations. Floor-to-ceiling 
screens pulse with real-time data - delivery routes snake across maps, inventory numbers 
cascade down dashboards, customer satisfaction scores tick upward. The hum of servers 
mingles with the quiet determination of the team.

But something's off. Despite the impressive technology, you notice team members hunched 
over Excel spreadsheets, manually copying data. A 'Digital Transformation 2025' banner 
hangs ironically above rows of sticky notes and printouts. The AI tools are here, but 
adoption is painfully low.

Exits: WEST to Zé Delivery Ops, EAST to PerfectDraft Lab, SOUTH to TaDa HQ, 
NORTH to Conference Room.")
      (WEST TO ZE-OPS)
      (EAST TO PD-LAB)
      (SOUTH TO TADA-HQ)
      (NORTH TO CONFERENCE-ROOM)
      (FLAGS LIGHTBIT)
      (ACTION HUB-R)>

<ROUTINE HUB-R (RARG)
    <COND (<==? .RARG ,M-LOOK>
           <COND (<AND ,HAS-TRAINING ,HAS-METRICS ,HAS-CHANGE ,HAS-ROI>
                  <CRLF>
                  <TELL "The atmosphere has changed. Team members are engaged, asking questions 
about AI tools. Someone's teaching a colleague at a whiteboard. The sticky notes are 
being replaced by digital dashboards. Progress is happening!" CR>)>)>>

<ROOM ZE-OPS
      (DESC "Zé Delivery Operations")
      (IN ROOMS)
      (LDESC "Welcome to the heart of Zé Delivery operations in Brazil. The room thrums with 
energy - servers hum, phones chirp with delivery notifications, and a massive LED map of 
São Paulo dominates one wall, showing hundreds of courier routes snaking through the city 
like glowing arteries.

Despite having cutting-edge AI routing software, you notice Maria manually adjusting routes 
in Excel, muttering about 'the AI getting it wrong last time.' There's clear tension between 
the promise of technology and the reality of adoption.

Exit: EAST to Global Hub.")
      (EAST TO HUB)
      (FLAGS LIGHTBIT)
      (ACTION ZE-OPS-R)>

<ROUTINE ZE-OPS-R (RARG)
    <COND (<==? .RARG ,M-LOOK>
           <COND (,MARIA-CONVINCED
                  <CRLF>
                  <TELL "Maria is now testing the AI routing system, comparing results with her 
spreadsheet. She's smiling - the accuracy is impressive when you actually track the metrics!" CR>)>)>>

<ROOM TADA-HQ
      (DESC "TaDa Delivery HQ")
      (IN ROOMS)
      (LDESC "The strategic command center for TaDa's LATAM expansion. Colorful charts plaster 
every wall - Mexico City in red, Bogotá in blue, Lima in green, Quito in yellow - each showing 
delivery zones and growth projections. The room buzzes with the energy of rapid expansion.

But amid the excitement, you sense frustration. Carlos rushes past with an armful of printouts, 
saying 'No time for new tools, we're too busy growing!' The irony is palpable - they need AI 
efficiency precisely BECAUSE they're growing so fast, yet they're too busy to adopt it.

Exit: NORTH to Global Hub.")
      (NORTH TO HUB)
      (FLAGS LIGHTBIT)
      (ACTION TADA-R)>

<ROUTINE TADA-R (RARG)
    <COND (<==? .RARG ,M-LOOK>
           <COND (,CARLOS-CONVINCED
                  <CRLF>
                  <TELL "Carlos has blocked 2 hours for his team's first AI training. 'Quick wins,' 
he keeps saying. 'Show me results in week one, not month three.'" CR>)>)>>

<ROOM PD-LAB
      (DESC "PerfectDraft Lab")
      (IN ROOMS)
      (LDESC "The European PerfectDraft innovation lab. Gleaming prototype draft systems line 
the workbenches, their copper pipes catching the light. Multiple monitors display real-time 
health data from thousands of connected draft machines across Europe - temperature, pressure, 
usage patterns, all flowing in like a digital brewery.

Sarah is practically bouncing with excitement about AI predictive maintenance, but her 
colleagues keep their heads down. You sense they think she's 'too technical' or 'a geek' 
and tune out when she talks. Great technology, poor knowledge transfer.

Exits: WEST to Global Hub, NORTH to Data Center.")
      (WEST TO HUB)
      (NORTH TO DATA-CENTER)
      (FLAGS LIGHTBIT)
      (ACTION PD-LAB-R)>

<ROUTINE PD-LAB-R (RARG)
    <COND (<==? .RARG ,M-LOOK>
           <COND (,SARAH-HELPED
                  <CRLF>
                  <TELL "Sarah is paired with two skeptical engineers, showing them hands-on examples. 
They're actually engaged! 'Wait, it does THAT?' one says, surprised." CR>)>)>>

<ROOM DATA-CENTER
      (DESC "Data Center")
      (IN ROOMS)
      (LDESC "The heart of the AI operations. Server racks line the walls, their lights 
blinking in synchronized patterns. A mainframe console dominates the center of the room.
The air is cool and filled with the hum of processors.
To the SOUTH is the PerfectDraft Lab.
To the UP is a ladder leading to the Rooftop.")
      (SOUTH TO PD-LAB)
      (UP TO ROOFTOP)
      (FLAGS LIGHTBIT)
      (ACTION DATA-CENTER-R)>

<GLOBAL MAINFRAME-POWERED <>>

<ROUTINE DATA-CENTER-R (RARG)
    <COND (<==? .RARG ,M-LOOK>
           <COND (,MAINFRAME-POWERED
                  <CRLF>
                  <TELL "The mainframe is humming with power, its screens displaying 
real-time analytics across all DTC operations." CR>)>)>>

<ROOM ROOFTOP
      (DESC "Rooftop")
      (IN ROOMS)
      (LDESC "You're on the roof of the DTC headquarters. The city sprawls below you.
A satellite dish points toward the sky, maintaining connections with global operations.
To the DOWN is the Data Center.")
      (DOWN TO DATA-CENTER)
      (FLAGS LIGHTBIT)>

<ROOM CONFERENCE-ROOM
      (DESC "Executive Conference Room")
      (IN ROOMS)
      (LDESC "The executive war room. A massive oak table stretches before you, surrounded by 
leather chairs. One wall is dominated by a state-of-the-art presentation screen, currently 
dark. The opposite wall displays framed photos of AB InBev's digital transformation milestones, 
but they all seem to be from 2-3 years ago - recent innovation has stalled.

James, the CFO, sits reviewing budget spreadsheets with a red pen, repeatedly circling the 
'AI Initiative' line item with question marks. The message is clear: prove the ROI or lose 
the funding.

Exit: SOUTH to Global Hub.")
      (SOUTH TO HUB)
      (FLAGS LIGHTBIT)
      (ACTION CONF-R)>

<GLOBAL PRESENTATION-READY <>>

<ROUTINE CONF-R (RARG)
    <COND (<==? .RARG ,M-LOOK>
           <COND (,PRESENTATION-READY
                  <CRLF>
                  <TELL "The room has transformed. Leadership fills the chairs, all focused on 
your presentation. The energy is electric!" CR>)
                 (<==? ,COMPONENTS-INSTALLED 4>
                  <CRLF>
                  <TELL "James looks up from his spreadsheets expectantly. The screen is ready. 
All eyes are on you." CR>)>)>>

