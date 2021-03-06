#/bin/sh

XKBCONFIGROOT='/usr/share/X11/xkb'

if [ ! -d test/data ]; then
    echo "Run this from the top source dir"
    exit 1
fi

for file in \
    symbols/terminate \
    symbols/in \
    symbols/keypad \
    symbols/altwin \
    symbols/ctrl \
    symbols/eurosign \
    symbols/inet \
    symbols/shift \
    symbols/pc \
    symbols/ca \
    symbols/srvr_ctrl \
    symbols/capslock \
    symbols/latin \
    symbols/level5 \
    symbols/us \
    symbols/nbsp \
    symbols/il \
    symbols/group \
    symbols/compose \
    symbols/level3 \
    symbols/ru \
    symbols/rupeesign \
    symbols/kpdl \
    symbols/de \
    keycodes/xfree86 \
    keycodes/aliases \
    keycodes/evdev \
    types/complete \
    types/pc \
    types/basic \
    types/iso9995 \
    types/level5 \
    types/numpad \
    types/extra \
    types/mousekeys \
    compat/complete \
    compat/lednum \
    compat/pc \
    compat/ledscroll \
    compat/basic \
    compat/misc \
    compat/iso9995 \
    compat/accessx \
    compat/xfree86 \
    compat/level5 \
    compat/caps \
    compat/ledcaps \
    compat/mousekeys \
    rules/base \
    rules/evdev \
; do
    cp "$XKBCONFIGROOT/$file" "test/data/$file"
done
