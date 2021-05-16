build:
	[ ! -f stremio-server.js ] \
			&& cd ./stremio-shell/ \
			&& make -f ./release.makefile server.js \
			&& mv server.js ../stremio-server.js || return 0
	cp src/stremio.sh ./stremio
	chmod +x ./stremio
