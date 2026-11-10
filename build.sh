#!/bin/sh
# Builds dist/US States Game.dmg. Needs: pip install pyinstaller -r requirements.txt
set -e
cd "$(dirname "$0")"
NAME="US States Game"
pyinstaller --noconfirm --windowed --name "$NAME" --osx-bundle-identifier "io.github.kunal-dangi.us-states-game" --add-data "50_states.csv:." --add-data "blank_states_img.gif:." main.py
mkdir -p build/dmg && ln -sfh /Applications build/dmg/Applications
ditto "dist/$NAME.app" "build/dmg/$NAME.app"
hdiutil create -volname "$NAME" -srcfolder build/dmg -ov -format UDZO "dist/$NAME.dmg"
