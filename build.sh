#!/bin/bash

rm -rf api/node_modules
rm -rf flutter_challenge/build
rm -rf flutter_challenge/ios/build
rm -rf flutter_challenge/android/build
rm -rf flutter_challenge/.dart_tool

zip -r dutchie-mobile-challenge.zip flutter_challenge api README.md .gitignore
