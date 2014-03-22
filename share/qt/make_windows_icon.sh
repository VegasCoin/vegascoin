#!/bin/bash
# create multiresolution windows icon
ICON_SRC=../../src/qt/res/icons/vegascoin.png
ICON_DST=../../src/qt/res/icons/vegascoin.ico
convert ${ICON_SRC} -resize 16x16 vegascoin-16.png
convert ${ICON_SRC} -resize 32x32 vegascoin-32.png
convert ${ICON_SRC} -resize 48x48 vegascoin-48.png
convert vegascoin-16.png vegascoin-32.png vegascoin-48.png ${ICON_DST}

