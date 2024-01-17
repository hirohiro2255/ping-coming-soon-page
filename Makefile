all: src/*.elm
	elm make src/Main.elm --output build/dist.js

build: src/*.elm
	elm make src/Main.elm --optimize --output=build/dist.js
