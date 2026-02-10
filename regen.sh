#!/usr/bin/bash
# linux only, sorry

git pull upstream main \
&& rm -rf dist .build \
&& npm run build -- ttf::Iosevie \
&& rm -rf ~/.local/share/fonts/i/Iosevie* \
&& cp -r dist/Iosevie/TTF ~/.local/share/fonts/i
