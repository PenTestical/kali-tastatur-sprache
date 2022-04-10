#!/bin/sh

# simples bash script um die Tastatursprache auf Deutsch zu ändern

if [ "$EUID" -ne 0 ]
then echo "Bitte als root ausführen"
        exit
fi

# temporäre änderung
setxkbmap -layout de

# permanente änderung
sed -i 's/us/de/g' /etc/default/keyboard
