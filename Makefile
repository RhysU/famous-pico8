SHELL=/bin/bash

all: famous.p8

famous.p8: famous_sprites.png empty.p8 Makefile
	cp empty.p8 $@
	./pico2png.pl $< || rm $@

famous-indexed.png: famous-original.png colors.png Makefile
	convert $< +dither -remap colors.png $@

OFF_L=32
OFF_T=32
SEP_L=64
SEP_T=64
SHAPE=40x40
famous_sprites.png: famous-indexed.png colors.png Makefile
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 0 * $(SEP_L) ))+$$(( $(OFF_T) + 0 * $(SEP_T) )) famous-00.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 0 * $(SEP_L) ))+$$(( $(OFF_T) + 1 * $(SEP_T) )) famous-01.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 0 * $(SEP_L) ))+$$(( $(OFF_T) + 2 * $(SEP_T) )) famous-02.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 0 * $(SEP_L) ))+$$(( $(OFF_T) + 3 * $(SEP_T) )) famous-03.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 0 * $(SEP_L) ))+$$(( $(OFF_T) + 4 * $(SEP_T) )) famous-04.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 0 * $(SEP_L) ))+$$(( $(OFF_T) + 5 * $(SEP_T) )) famous-05.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 0 * $(SEP_L) ))+$$(( $(OFF_T) + 6 * $(SEP_T) )) famous-06.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 0 * $(SEP_L) ))+$$(( $(OFF_T) + 7 * $(SEP_T) )) famous-07.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 0 * $(SEP_L) ))+$$(( $(OFF_T) + 8 * $(SEP_T) )) famous-08.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 0 * $(SEP_L) ))+$$(( $(OFF_T) + 9 * $(SEP_T) )) famous-09.png

	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 1 * $(SEP_L) ))+$$(( $(OFF_T) + 0 * $(SEP_T) )) famous-10.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 1 * $(SEP_L) ))+$$(( $(OFF_T) + 1 * $(SEP_T) )) famous-11.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 1 * $(SEP_L) ))+$$(( $(OFF_T) + 2 * $(SEP_T) )) famous-12.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 1 * $(SEP_L) ))+$$(( $(OFF_T) + 3 * $(SEP_T) )) famous-13.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 1 * $(SEP_L) ))+$$(( $(OFF_T) + 4 * $(SEP_T) )) famous-14.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 1 * $(SEP_L) ))+$$(( $(OFF_T) + 5 * $(SEP_T) )) famous-15.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 1 * $(SEP_L) ))+$$(( $(OFF_T) + 6 * $(SEP_T) )) famous-16.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 1 * $(SEP_L) ))+$$(( $(OFF_T) + 7 * $(SEP_T) )) famous-17.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 1 * $(SEP_L) ))+$$(( $(OFF_T) + 8 * $(SEP_T) )) famous-18.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 1 * $(SEP_L) ))+$$(( $(OFF_T) + 9 * $(SEP_T) )) famous-19.png

	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 2 * $(SEP_L) ))+$$(( $(OFF_T) + 0 * $(SEP_T) )) famous-20.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 2 * $(SEP_L) ))+$$(( $(OFF_T) + 1 * $(SEP_T) )) famous-21.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 2 * $(SEP_L) ))+$$(( $(OFF_T) + 2 * $(SEP_T) )) famous-22.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 2 * $(SEP_L) ))+$$(( $(OFF_T) + 3 * $(SEP_T) )) famous-23.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 2 * $(SEP_L) ))+$$(( $(OFF_T) + 4 * $(SEP_T) )) famous-24.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 2 * $(SEP_L) ))+$$(( $(OFF_T) + 5 * $(SEP_T) )) famous-25.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 2 * $(SEP_L) ))+$$(( $(OFF_T) + 6 * $(SEP_T) )) famous-26.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 2 * $(SEP_L) ))+$$(( $(OFF_T) + 7 * $(SEP_T) )) famous-27.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 2 * $(SEP_L) ))+$$(( $(OFF_T) + 8 * $(SEP_T) )) famous-28.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 2 * $(SEP_L) ))+$$(( $(OFF_T) + 9 * $(SEP_T) )) famous-29.png

	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 3 * $(SEP_L) ))+$$(( $(OFF_T) + 0 * $(SEP_T) )) famous-30.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 3 * $(SEP_L) ))+$$(( $(OFF_T) + 1 * $(SEP_T) )) famous-31.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 3 * $(SEP_L) ))+$$(( $(OFF_T) + 2 * $(SEP_T) )) famous-32.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 3 * $(SEP_L) ))+$$(( $(OFF_T) + 3 * $(SEP_T) )) famous-33.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 3 * $(SEP_L) ))+$$(( $(OFF_T) + 4 * $(SEP_T) )) famous-34.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 3 * $(SEP_L) ))+$$(( $(OFF_T) + 5 * $(SEP_T) )) famous-35.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 3 * $(SEP_L) ))+$$(( $(OFF_T) + 6 * $(SEP_T) )) famous-36.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 3 * $(SEP_L) ))+$$(( $(OFF_T) + 7 * $(SEP_T) )) famous-37.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 3 * $(SEP_L) ))+$$(( $(OFF_T) + 8 * $(SEP_T) )) famous-38.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 3 * $(SEP_L) ))+$$(( $(OFF_T) + 9 * $(SEP_T) )) famous-39.png

	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 4 * $(SEP_L) ))+$$(( $(OFF_T) + 0 * $(SEP_T) )) famous-40.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 4 * $(SEP_L) ))+$$(( $(OFF_T) + 1 * $(SEP_T) )) famous-41.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 4 * $(SEP_L) ))+$$(( $(OFF_T) + 2 * $(SEP_T) )) famous-42.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 4 * $(SEP_L) ))+$$(( $(OFF_T) + 3 * $(SEP_T) )) famous-43.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 4 * $(SEP_L) ))+$$(( $(OFF_T) + 4 * $(SEP_T) )) famous-44.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 4 * $(SEP_L) ))+$$(( $(OFF_T) + 5 * $(SEP_T) )) famous-45.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 4 * $(SEP_L) ))+$$(( $(OFF_T) + 6 * $(SEP_T) )) famous-46.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 4 * $(SEP_L) ))+$$(( $(OFF_T) + 7 * $(SEP_T) )) famous-47.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 4 * $(SEP_L) ))+$$(( $(OFF_T) + 8 * $(SEP_T) )) famous-48.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 4 * $(SEP_L) ))+$$(( $(OFF_T) + 9 * $(SEP_T) )) famous-49.png

	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 5 * $(SEP_L) ))+$$(( $(OFF_T) + 0 * $(SEP_T) )) famous-50.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 5 * $(SEP_L) ))+$$(( $(OFF_T) + 1 * $(SEP_T) )) famous-51.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 5 * $(SEP_L) ))+$$(( $(OFF_T) + 2 * $(SEP_T) )) famous-52.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 5 * $(SEP_L) ))+$$(( $(OFF_T) + 3 * $(SEP_T) )) famous-53.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 5 * $(SEP_L) ))+$$(( $(OFF_T) + 4 * $(SEP_T) )) famous-54.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 5 * $(SEP_L) ))+$$(( $(OFF_T) + 5 * $(SEP_T) )) famous-55.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 5 * $(SEP_L) ))+$$(( $(OFF_T) + 6 * $(SEP_T) )) famous-56.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 5 * $(SEP_L) ))+$$(( $(OFF_T) + 7 * $(SEP_T) )) famous-57.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 5 * $(SEP_L) ))+$$(( $(OFF_T) + 8 * $(SEP_T) )) famous-58.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 5 * $(SEP_L) ))+$$(( $(OFF_T) + 9 * $(SEP_T) )) famous-59.png

	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 6 * $(SEP_L) ))+$$(( $(OFF_T) + 0 * $(SEP_T) )) famous-60.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 6 * $(SEP_L) ))+$$(( $(OFF_T) + 1 * $(SEP_T) )) famous-61.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 6 * $(SEP_L) ))+$$(( $(OFF_T) + 2 * $(SEP_T) )) famous-62.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 6 * $(SEP_L) ))+$$(( $(OFF_T) + 3 * $(SEP_T) )) famous-63.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 6 * $(SEP_L) ))+$$(( $(OFF_T) + 4 * $(SEP_T) )) famous-64.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 6 * $(SEP_L) ))+$$(( $(OFF_T) + 5 * $(SEP_T) )) famous-65.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 6 * $(SEP_L) ))+$$(( $(OFF_T) + 6 * $(SEP_T) )) famous-66.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 6 * $(SEP_L) ))+$$(( $(OFF_T) + 7 * $(SEP_T) )) famous-67.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 6 * $(SEP_L) ))+$$(( $(OFF_T) + 8 * $(SEP_T) )) famous-68.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 6 * $(SEP_L) ))+$$(( $(OFF_T) + 9 * $(SEP_T) )) famous-69.png

	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 7 * $(SEP_L) ))+$$(( $(OFF_T) + 0 * $(SEP_T) )) famous-70.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 7 * $(SEP_L) ))+$$(( $(OFF_T) + 1 * $(SEP_T) )) famous-71.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 7 * $(SEP_L) ))+$$(( $(OFF_T) + 2 * $(SEP_T) )) famous-72.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 7 * $(SEP_L) ))+$$(( $(OFF_T) + 3 * $(SEP_T) )) famous-73.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 7 * $(SEP_L) ))+$$(( $(OFF_T) + 4 * $(SEP_T) )) famous-74.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 7 * $(SEP_L) ))+$$(( $(OFF_T) + 5 * $(SEP_T) )) famous-75.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 7 * $(SEP_L) ))+$$(( $(OFF_T) + 6 * $(SEP_T) )) famous-76.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 7 * $(SEP_L) ))+$$(( $(OFF_T) + 7 * $(SEP_T) )) famous-77.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 7 * $(SEP_L) ))+$$(( $(OFF_T) + 8 * $(SEP_T) )) famous-78.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 7 * $(SEP_L) ))+$$(( $(OFF_T) + 9 * $(SEP_T) )) famous-79.png

	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 8 * $(SEP_L) ))+$$(( $(OFF_T) + 0 * $(SEP_T) )) famous-80.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 8 * $(SEP_L) ))+$$(( $(OFF_T) + 1 * $(SEP_T) )) famous-81.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 8 * $(SEP_L) ))+$$(( $(OFF_T) + 2 * $(SEP_T) )) famous-82.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 8 * $(SEP_L) ))+$$(( $(OFF_T) + 3 * $(SEP_T) )) famous-83.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 8 * $(SEP_L) ))+$$(( $(OFF_T) + 4 * $(SEP_T) )) famous-84.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 8 * $(SEP_L) ))+$$(( $(OFF_T) + 5 * $(SEP_T) )) famous-85.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 8 * $(SEP_L) ))+$$(( $(OFF_T) + 6 * $(SEP_T) )) famous-86.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 8 * $(SEP_L) ))+$$(( $(OFF_T) + 7 * $(SEP_T) )) famous-87.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 8 * $(SEP_L) ))+$$(( $(OFF_T) + 8 * $(SEP_T) )) famous-88.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 8 * $(SEP_L) ))+$$(( $(OFF_T) + 9 * $(SEP_T) )) famous-89.png

	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 9 * $(SEP_L) ))+$$(( $(OFF_T) + 0 * $(SEP_T) )) famous-90.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 9 * $(SEP_L) ))+$$(( $(OFF_T) + 1 * $(SEP_T) )) famous-91.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 9 * $(SEP_L) ))+$$(( $(OFF_T) + 2 * $(SEP_T) )) famous-92.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 9 * $(SEP_L) ))+$$(( $(OFF_T) + 3 * $(SEP_T) )) famous-93.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 9 * $(SEP_L) ))+$$(( $(OFF_T) + 4 * $(SEP_T) )) famous-94.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 9 * $(SEP_L) ))+$$(( $(OFF_T) + 5 * $(SEP_T) )) famous-95.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 9 * $(SEP_L) ))+$$(( $(OFF_T) + 6 * $(SEP_T) )) famous-96.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 9 * $(SEP_L) ))+$$(( $(OFF_T) + 7 * $(SEP_T) )) famous-97.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 9 * $(SEP_L) ))+$$(( $(OFF_T) + 8 * $(SEP_T) )) famous-98.png
	convert $< -crop $(SHAPE)+$$(( $(OFF_L) + 9 * $(SEP_L) ))+$$(( $(OFF_T) + 9 * $(SEP_T) )) famous-99.png
	
	montage famous-{0,1,2,3,4,5,7,8,9}{0,1,2,3,4,5,6,7,8,9}.png -tile 16x -geometry '8x8>+0+0' -background black $@
	convert $@ -gravity northwest -extent 128x128 $@
	convert $@ +dither -remap colors.png $@
	convert $@ txt:- | cut '-d#' -f 2 | cut '-d ' -f 1 | sort -u | nl
