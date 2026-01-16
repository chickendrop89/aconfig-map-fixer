#  AConfig map fixer
#  Copyright (C) 2026 chickendrop89
#
#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program.  If not, see <https://www.gnu.org/licenses/>.

TARGET_DIR="/metadata/aconfig/maps"
BACKUP_DIR="/metadata/aconfig/maps.bak"

ui_print "[+] Fixing AConfig maps"

if [ -d "$TARGET_DIR" ]; 
    then
        if [ -d "$BACKUP_DIR" ]; 
            then
                ui_print "[+] Removing old backup..."
                rm -rf "$BACKUP_DIR"
        fi

        ui_print "[+] Renaming directory..."
        mv "$TARGET_DIR" "$BACKUP_DIR"

        if [ $? -eq 0 ]; 
            then ui_print "[SUCCESS] Done. Restart your device twice."
            else ui_print "[FAILED] Metadata partition might be busy or protected."
        fi
    else 
        ui_print "[FAILED] $TARGET_DIR not found, something is very wrong"
        ui_print "[FAILED] or this script was already ran on this system session"
fi

ui_print
abort "This script will now abort for a native cleanup."
