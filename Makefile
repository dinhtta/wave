all: waved cli

.PHONY : all

dep:
	dep ensure

pairing.a: dep
	cd vendor/github.com/ucbrise/jedi-pairing && make

waved: pairing.a
	cd waved/cmd && go build -o waved

cli: pairing.a
	cd cli && go build -o wv
