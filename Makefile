######################
#	  Makefile	  #
######################

FILE_NAME = Resume

LATEX = xelatex
BIBER = biber

all: clean all1
all1: clean la la2 la3 
no: clean la la2 

la:
	@$(LATEX) $(FILE_NAME)
bib:
	@$(BIBER) $(FILE_NAME)
la2:
	@$(LATEX) $(FILE_NAME)
la3:
	@$(LATEX) $(FILE_NAME)
show:
	@open $(FILE_NAME).pdf &


clean:
	@rm -f *.log *.aux *.dvi *.ps *.blg *.bbl *.out *.bcf *.run.xml
