
all: document install

document:
	R --quiet -e 'devtools::document()'

install:
	R --quiet -e 'devtools::install()'

