#!/bin/bash

set +x

TENSORFLOW=$HOME/builds/tensorflow
HEIGHT=20
WIDTH=60
CHOICE_HEIGHT=4
BACKTITLE="Build Raspberry Pi .whl"
TITLE="Choose processor architechture"
MENU="Choose one of the following options:"
TERMINAL=$(tty)
OPTIONS=(1 "arm7l 32-bit"
         2 "aarch64 64-bit")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >$TERMINAL)

clear
case $CHOICE in
        1)
            cd $TENSORFLOW && $TENSORFLOW/tensorflow/tools/ci_build/ci_build.sh PI-PYTHON37 \
                tensorflow/tools/ci_build/pi/build_raspberry_pi.sh
            ls -ahl output-artifacts/
            ;;
        2)
            cd $TENSORFLOW && $TENSORFLOW/tensorflow/tools/ci_build/ci_build.sh PI-PYTHON38 \
                tensorflow/tools/ci_build/pi/build_raspberry_pi.sh AARCH64
            cd $TENSORFLOW && $TENSORFLOW/tensorflow/tools/ci_build/ci_build.sh PI-PYTHON37 \
                tensorflow/tools/ci_build/pi/build_raspberry_pi.sh AARCH64
            ls -ahl output-artifacts/
            ;;
esac