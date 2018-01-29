#!/bin/bash

function super_clear {
  for ((i = 0; i < 10; ++i)); do
    clear
  done
}

function mountAndroid {
  hdiutil attach ~/android.dmg.sparseimage -mountpoint /Volumes/android;
}

function umountAndroid {
  hdiutil detach /Volumes/android
}
