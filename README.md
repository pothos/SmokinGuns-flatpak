# Smokin' Guns amd64 Flatpak

This is a Flatpak bundle of [Smokin' Guns](https://github.com/smokin-guns/SmokinGuns/).

Download the bundle file [here](https://github.com/pothos/SmokinGuns-flatpak/releases/tag/0.1), install with `flatpak --user install test.smokinguns.SmokinGuns.flatpak` and run with `flatpak run test.smokinguns.SmokinGuns`

https://www.smokin-guns.org/
GPL 2 ioquake3 engine

## Build from source

Run `make` and `make test-run` to run from the folder. Run `make test.smokinguns.SmokinGuns.flatpak` to build a flatpak bundle file.

Note: `glu-9.json` and `SDL-1.2.15.json` come from https://github.com/flathub/shared-modules
