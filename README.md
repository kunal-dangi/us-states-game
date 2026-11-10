# US States Game

Name all 50 US states on a blank map. Correct guesses get written onto the map. Type **Exit** to quit — the states you missed are saved to `~/Library/Application Support/US States Game/remaining.csv`.

Built with Python while learning (part of my [PythonProject](https://github.com/kunal-dangi/PythonProject) 100-days journey).



## Download (macOS)

Grab **US States Game.dmg** from the [latest release](https://github.com/kunal-dangi/us-states-game/releases/latest), open it, and drag **US States Game** into Applications.

The app isn't notarized by Apple, so the first launch will be blocked. Either right-click the app → **Open**, or run:

```bash
xattr -cr "/Applications/US States Game.app"
```

Built for Apple Silicon (arm64) Macs.

## Run from source

```bash
pip install -r requirements.txt
python3 main.py
```

## Build the DMG yourself

```bash
pip install pyinstaller -r requirements.txt
./build.sh
```
