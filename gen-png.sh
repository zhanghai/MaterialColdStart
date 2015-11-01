#!/bin/bash
mkdir -p gen
cd gen
../shsvg/shsvgdpi.sh ../raw/window_background_statusbar_toolbar_tab.9.shsvg
../shsvg/shsvgdpi.sh ../raw-v23/window_background_statusbar_toolbar_tab.9.shsvg '' '-v23'
../shsvg/shsvgdpi.sh ../raw-sw600dp/window_background_statusbar_toolbar_tab.9.shsvg '-sw600dp'
../shsvg/shsvgdpi.sh ../raw-sw600dp-v23/window_background_statusbar_toolbar_tab.9.shsvg '-sw600dp' '-v23'
