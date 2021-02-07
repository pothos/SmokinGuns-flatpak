all: deps build

deps:
	flatpak --user install flathub org.freedesktop.Platform//20.08 org.freedesktop.Sdk//20.08

build:
	flatpak-builder --repo=repo build-dir --force-clean test.smokinguns.SmokinGuns.yaml

test-run:
	flatpak-builder --run build-dir test.smokinguns.SmokinGuns.yaml /app/smokinguns/smokinguns.x86_64

test.smokinguns.SmokinGuns.flatpak:
	flatpak build-bundle repo test.smokinguns.SmokinGuns.flatpak --runtime-repo=https://flathub.org/repo/flathub.flatpakrepo test.smokinguns.SmokinGuns

install: test.smokinguns.SmokinGuns.flatpak
	flatpak --user install test.smokinguns.SmokinGuns.flatpak

installed-run:
	flatpak run test.smokinguns.SmokinGuns
