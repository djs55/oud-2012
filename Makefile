ifeq ($(MIRAGE_OS),xen)
FLAGS=--enable-xen --disable-unix
else
FLAGS=--enable-unix --disable-xen
endif

all: 
	ocaml setup.ml -configure $(FLAGS)
	ocaml setup.ml -build

run:
	sudo xl destroy main.xen || /bin/true
	sudo /sbin/brctl addbr internal || /bin/true
	sudo /sbin/ifconfig internal 10.0.0.1 netmask 255.255.255.0
	mir-run -b xen _build/src/main.xen -vif internal

.PHONY:clean
clean:
	ocamlbuild -clean
