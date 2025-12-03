LAT 		= latex
BIBMULT	= bibmult.sh
GLOS 		= makeglos.pl 
DVIPS 	= dvips -Ppdf -G0 
GV 		= gv
PS2PDF	= ps2pdf-ieee
PS2PDFB5 = ps2pdf-ieee-b5
PSRESIZE = psresize -Pa4 -pb5
XPDF 		= xpdf -remote -raise
ACROREAD = acroread
DPIC    	= dpic
XDVI		= xdvi
TR 		= | tr '=' '\134'
M4       = m4
LIBDIR   =$(HOME)/texmf-local/Circuit_macros
M4LIBS   = $(LIBDIR)/pgf.m4 $(LIBDIR)/libcct.m4 $(LIBDIR)/liblog.m4
M4DIR    = --include=./


%.dvi:	%.tex	
	$(LAT)	$*.tex
	$(LAT)	$*.tex
	$(LAT)	$*.tex

%.ps:	%.dvi
	$(DVIPS) $*.dvi

%.pdf:	%.ps	
	$(PS2PDF) $*.ps
	$(XPDF) $*.pdf

trans: 
	$(LAT)	$(DOC)
	$(LAT)	$(DOC)
	$(PS)		$(DOC)
	$(PDF) 	$(DOC).ps $(DOC)_slides.pdf
	$(VIEW) 	$(DOC)_slides.pdf

handout: %.tex 
	$(LAT)	$(DOC)
	$(LAT)	$(DOC)
	$(PS)		$(DOC)
	$(PDF) 	$(DOC).ps $(DOC)_handout.pdf
	$(VIEW) 	$(DOC)_handout.pdf

glos:
	$(GLOS) main	

bib:	
	$(BIBMULT)


pictex: %.m4
	$(M4) $(M4LIBS) $(M4MACROS) $(M4DIR) $*.m4 | $(DPIC) -p >> $*.mp	


%.mp: %.m4
	@(printf 'verbatimtex\n' ;\
	printf '=documentclass[11pt]{article}\n' ;\
	printf '=usepackage{times,boxdims,graphicx}\n' ;\
	printf '=boxdimfile{tmp.dim}\n' ; \
	printf '=begin{document} etex\n' ) $(TR) > $*.mp
	$(M4) $(M4LIBS) $(M4MACROS) $(M4DIR) $*.m4 | $(DPIC) -s >> $*.mp
	@printf 'end\n' >> $*.mp

%.mps: %.mp
	$(MPOST) $*.mp
	\mv *.1 *.mps

spell:	 
	aspell -c -t -d de_DE $*.tex

clean:
	\rm -rf *.log *~ *.toc *.dvi *.aux *.ps *.ind *.ist *.ilg *.idx *.lof *.pkt *.dim
	\rm -rf *.glg *.glo *.gls *.out *.lot *.pfg *.bak *.bbl *.blg *.xml *-blx.bib
	\rm -rf *.url *.acn *.acr *.alg *.rel *.nav *.snm auto *.bcf *.run* *synctex.gz *.tex-e
