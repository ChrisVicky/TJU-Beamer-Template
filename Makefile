### 
# @file Makefile
# @brief Quick Commands
# @author Christopher Liu
# @version 1.0
# @date 2023-01-08
#

PRO_NAME=slide
LATEX=xelatex # latexmk -xelatex
BIBTEX=bibtex # latexmk -bibtex

default: quickbuild

quickbuild: 
	${LATEX} ${PRO_NAME}

build: clean
	${LATEX} ${PRO_NAME}
	${BIBTEX} ${PRO_NAME}
	${LATEX} ${PRO_NAME}
	${LATEX} ${PRO_NAME}

clean:
	@./clean.sh
