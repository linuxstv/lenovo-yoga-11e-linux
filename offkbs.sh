#!/bin/bash

idsynaptics=$(xinput --list|grep 'Synaptics TouchPad'|cut -d$'\t' -f2|cut -d\= -f2)
idkbd=$(xinput --list|grep 'AT Translated Set 2 keyboard'|cut -d$'\t' -f2|cut -d\= -f2)

#disable synaptics
xinput set-int-prop $idsynaptics "Device Enabled" 8 0
#disable keyboard
xinput set-int-prop $idkbd "Device Enabled" 8 0
