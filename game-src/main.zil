"DTC AI Zork - Main Game File"

<VERSION ZIP>
<CONSTANT RELEASEID 1>

"Game banner"
<CONSTANT GAME-BANNER
"AB InBev DTC AI Operations Simulation|
Pushing AI Adoption - A training adventure|
Find the strategy to accelerate AI adoption across teams|
Built with Microsoft's open-source Zork code|
Version 1.0">

"Main entry point"
<ROUTINE GO ()
    <CRLF> <CRLF>
    <TELL "===============================================================================" CR>
    <CRLF>
    <TELL "          ####    #####    ####           ###    ####                        " CR>
    <TELL "          #   #     #     #    #         #   #    ##                         " CR>
    <TELL "          #   #     #     #              #####    ##                         " CR>
    <TELL "          #   #     #     #              #   #    ##                         " CR>
    <TELL "          ####      #      ####          #   #   ####                        " CR>
    <CRLF>
    <TELL "                   #    #  #    #  ####                                      " CR>
    <TELL "                   #    #  #    #  #   #                                     " CR>
    <TELL "                   ######  #    #  ####                                      " CR>
    <TELL "                   #    #  #    #  #   #                                     " CR>
    <TELL "                   #    #   ####   ####                                      " CR>
    <CRLF>
    <TELL "                      >>> Pushing AI Adoption <<<                            " CR>
    <CRLF>
    <TELL "===============================================================================" CR>
    <CRLF>
    <TELL "           Welcome to the AB InBev DTC AI Operations Simulation" CR CR>
    <TELL "    The teams are struggling with AI adoption. Low engagement, unclear" CR>
    <TELL "    ROI, and resistance to change are holding back progress. Your mission:" CR>
    <TELL "    Find the AI strategy components scattered across global hubs and" CR>
    <TELL "              create a unified plan to drive AI adoption!" CR CR>
    <TELL "               Type HELP to see the command list, or HINTS for clues" CR CR>
    <INIT-STATUS-LINE>
    <V-VERSION> <CRLF>
    <SETG HERE ,HUB>
    <MOVE ,PLAYER ,HERE>
    <V-LOOK>
    <MAIN-LOOP>>

"Include the ZILF parser library - this provides the game engine"
<INSERT-FILE "parser">

"Include our game content"
<INSERT-FILE "rooms">
<INSERT-FILE "objects">
<INSERT-FILE "status">

