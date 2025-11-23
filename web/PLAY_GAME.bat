@echo off
REM DTC AI HUB Game Launcher (Windows)

cd /d "%~dp0"
echo ============================================
echo   DTC AI HUB - Starting Game Server
echo ============================================
echo.
echo Starting local web server...
echo The game will open in your browser...
echo.
echo WARNING: DO NOT CLOSE THIS WINDOW while playing!
echo          Press Ctrl+C here when you're done.
echo.
echo ============================================
echo.

timeout /t 2 /nobreak > nul

REM Open browser
start http://localhost:8765/game.html

REM Start server (try Python 3 first, then Python 2)
python -m http.server 8765 2>nul
if errorlevel 1 (
    python -m SimpleHTTPServer 8765
)

