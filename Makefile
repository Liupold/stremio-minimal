build:
	git submodule update --init --recursive
	[ ! -f stremio-server.js ] \
			&& cd ./stremio-shell/ \
			&& make -f ./release.makefile server.js \
			&& mv server.js ../stremio-server.js || echo "OK"
	cp src/stremio.sh ./stremio
	chmod +x ./stremio

install: build
	mkdir -p ~/.local/bin/
	mkdir -p ~/.local/share
	cp stremio ~/.local/bin
	cp stremio-server.js ~/.local/share/

clean:
	rm stremio
	rm stremio-server.js

update: clean build
