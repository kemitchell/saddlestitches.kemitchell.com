svgs=$(wildcard *.svg)
svg_to_webp=$(svgs:.svg=.webp)
svg_to_png=$(svgs:.svg=.png)

all: $(svg_to_webp) $(svg_to_png)

%.webp: %.svg
	convert -density 600 "$<" "$@"

%.png: %.svg
	convert -density 600 "$<" "$@"

.PHONY: clean

clean:
	rm -rf $(svg_to_webp) $(svg_to_png)
