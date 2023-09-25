SERVER_JS_URL=$(shell wget -O - --quiet \
							https://raw.githubusercontent.com/Stremio/stremio-shell/master/server-url.txt)
JS_DIR=${HOME}/.local/share
BIN_DIR=${HOME}/.local/bin

install: dir
	@echo USING: ${SERVER_JS_URL}
	wget ${SERVER_JS_URL} -O "${HOME}/.local/share/stremio-server.js"
	cp stremio.sh ${BIN_DIR}/stremio
	chmod +x "${BIN_DIR}/stremio"

dir:
	mkdir -p ${JS_DIR} ${BIN_DIR}

unistall:
	rm "${JS_DIR}/stremio-server.js" "${BIN_DIR}/stremio"

update: install
