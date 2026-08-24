#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Open in CotEditor
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 📝
# @raycast.packageName Finder

# Documentation:
# @raycast.description Opens the currently selected Finder file with CotEditor


# 1. Fast check: See if Finder is running and was the frontmost app
# lsappinfo is a native C binary and runs significantly faster than osascript
front_app=$(lsappinfo info -only bundleid `lsappinfo front` 2>/dev/null)

if [[ "$front_app" == *"com.apple.finder"* ]]; then
    # 2. Only run AppleScript if Finder was actually active
    selected_file=$(osascript -e '
    tell application "Finder"
        if (count of (selection as alias list)) > 0 then
            return POSIX path of (item 1 of (selection as alias list) as text)
        end if
    end tell
    ' 2>/dev/null)
fi

# 3. Open selected file or fall back to empty CotEditor
if [ -n "$selected_file" ]; then
    open -a "CotEditor" "$selected_file"
else
    open -a "CotEditor"
fi
