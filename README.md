# 100 famous characters for PICO-8

## TL;DR

You want the image [famous_sprites.png](famous_sprites.png) or the cartridge
[famous.p8](famous.p8) to import [100 famous
characters](https://twitter.com/johanvinet/status/635814153601597441) into
PICO-8.

## Backstory

[awesome-PICO-8](https://github.com/pico-8/awesome-PICO-8) provides
[Spritesheets and tools for the Pico-8
Palette](https://www.reddit.com/r/pico8/comments/3jhmni/spritesheets_and_tools_for_the_pico8_palette/)
which points to [100 famous
characters](https://twitter.com/johanvinet/status/635814153601597441).  It's a
cool resource!  However, frustratingly, that resource is:

 1. Not actually 16-color art
    (on account of blending, etc. there are 1000's of discrete colors)
 2. Not laid out in a way that can be ingested for a cart
    (on account of the author having spaced the sprites in a pretty way).

Using [ImageMagick](https://imagemagick.org/) and
[pico2png](https://github.com/briacp/pico2png) this repository produces a
128x128 PNG and a PICO-8 cart containing those 100 characters.  The process
is automated in the [Makefile](Makefile) and required quite some fiddling.
