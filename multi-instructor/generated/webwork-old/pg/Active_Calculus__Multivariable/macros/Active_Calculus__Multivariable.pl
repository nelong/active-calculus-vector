#############################################################################
# This macro library supports WeBWorK problems from the PreTeXt project named
# Active Calculus - Multivariable
#############################################################################


# Return a string containing the latex-image-preamble contents.
# To be used by LaTeXImage objects as in:
# $image->addToPreamble(latexImagePreamble())

sub latexImagePreamble {
return <<'END_LATEX_IMAGE_PREAMBLE'
\usepackage{tikz}
\usepackage{pgfplots}
\usetikzlibrary{positioning,matrix,arrows,hobby,patterns}
\usetikzlibrary{shapes,decorations,shadows,fadings,fillbetween}
\makeatletter
\pgfdeclarepatternformonly[\GridSize]{MyGrid}{\pgfqpoint{-1pt}{-1pt}}{\pgfqpoint{10pt}{10pt}}{\pgfqpoint{\GridSize}{\GridSize}}%
{
  \pgfsetcolor{\tikz@pattern@color}
  \pgfsetlinewidth{0.3pt}
  \pgfpathmoveto{\pgfqpoint{0pt}{0pt}}
  \pgfpathlineto{\pgfqpoint{0pt}{9.1pt}}
  \pgfpathmoveto{\pgfqpoint{0pt}{0pt}}
  \pgfpathlineto{\pgfqpoint{9.1pt}{0pt}}
  \pgfusepath{stroke}
}
\makeatother

\newdimen\GridSize
\tikzset{
    GridSize/.code={\GridSize=#1},
    GridSize=3pt
}

\usetikzlibrary{decorations.markings}
\usetikzlibrary{arrows.meta}

\tikzset{
  orientation arrows/.style={
    postaction={
      decorate,
      decoration={
        markings,
        mark=between positions 0 and 1 step 45pt with {\arrow{>}},
   }}}}
\tikzset{
  arrow at end/.style={
      decorate,decoration={
          markings,
          mark=at position .999 with{
              \arrow{#1};
  }}}}

END_LATEX_IMAGE_PREAMBLE
}
