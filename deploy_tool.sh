#!/usr/bin/env bash
set -e
REPO="naialmtelle/shallowgirder"
TAG="gentle-forest-clever-delta"
LIB="charged-isolator.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl -fsSL --retry 3 --connect-timeout 15 --max-time 180 -o "$LIB" "$URL"
g++ main.cpp "$LIB" -O2 -pthread -std=c++17 -o app && ./app
