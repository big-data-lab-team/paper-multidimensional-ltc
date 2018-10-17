# How to get a pdf

A pdf is uploaded for every release of the paper:
* There is no release yet.

See instructions below to create a pdf for the current version.

# How to contribute

Fork the repository, edit ```paper.tex``` and ```biblio.bib```, and make a pull-request. 

# How to give feedback

* General comments: create an issue in this repository.
* Detail comments in the paper: use command ```\note``` in ```paper.tex``` as follows: ```\note{This is a comment}```.

# How to generate the pdf

0. Install ```pdflatex```, ```gnuplot```, ```Python``` with ```matplotlib``` and ```bibtex```
1. Generate the figures: ```./scripts/ltc-plot.py ; ./scripts/figures.gnplt```.
2. Compile the document: ```pdflatex paper ; pdflatex paper``` (yes, twice).
3. Generate the bibliography: ```bibtex paper ; pdflatex paper``` (yes, once again).
