#############################################################################
# This macro library supports WeBWorK problems from the PreTeXt project named
# Active Calculus - Multivariable
#############################################################################


TEXT(
    MODES(
        HTML => '<div style="display:none;">' . general_math_ev3(<<'EOF') . '</div>',
\newcommand{\R}{\mathbb{R}}
\newcommand{\va}{\vec{a}}
\newcommand{\vb}{\vec{b}}
\newcommand{\vc}{\vec{c}}
\newcommand{\vC}{\vec{C}}
\newcommand{\vd}{\vec{d}}
\newcommand{\ve}{\vec{e}}
\newcommand{\cursedihat}{\hat{\dot{i}}}
\newcommand{\vi}{\hat{\imath}}
\newcommand{\vj}{\hat{\jmath}}
\newcommand{\vk}{\hat{k}}
\newcommand{\vn}{\vec{n}}
\newcommand{\vm}{\vec{m}}
\newcommand{\vr}{\vec{r}}
\newcommand{\vs}{\vec{s}}
\newcommand{\vu}{\vec{u}}
\newcommand{\vv}{\vec{v}}
\newcommand{\vw}{\vec{w}}
\newcommand{\vx}{\vec{x}}
\newcommand{\vy}{\vec{y}}
\newcommand{\vz}{\vec{z}}
\newcommand{\vzero}{\vec{0}}
\newcommand{\vF}{\vec{F}}
\newcommand{\vG}{\vec{G}}
\newcommand{\vH}{\vec{H}}
\newcommand{\vR}{\vec{R}}
\newcommand{\vT}{\vec{T}}
\newcommand{\vN}{\vec{N}}
\newcommand{\vL}{\vec{L}}
\newcommand{\vA}{\vec{A}}
\newcommand{\vB}{\vec{B}}
\newcommand{\vS}{\vec{S}}
\newcommand{\proj}{\text{proj}}
\newcommand{\comp}{\text{comp}}
\newcommand{\nin}{}
\newcommand{\vecmag}[1]{\left\lVert #1\right\rVert}
\newcommand{\grad}{\nabla}
\newcommand\restrict[2]{\raise-.5ex\hbox{$\Big|_{#1}^{#2}$}}
\DeclareMathOperator{\curl}{curl}
\DeclareMathOperator{\divg}{div}
\newcommand{\amp}{&}
EOF
        TeX => '\ifdefined\ptxmacros\else ' . <<'EOF'
\newcommand{\R}{\mathbb{R}}
\newcommand{\va}{\vec{a}}
\newcommand{\vb}{\vec{b}}
\newcommand{\vc}{\vec{c}}
\newcommand{\vC}{\vec{C}}
\newcommand{\vd}{\vec{d}}
\newcommand{\ve}{\vec{e}}
\newcommand{\cursedihat}{\hat{\dot{i}}}
\newcommand{\vi}{\hat{\imath}}
\newcommand{\vj}{\hat{\jmath}}
\newcommand{\vk}{\hat{k}}
\newcommand{\vn}{\vec{n}}
\newcommand{\vm}{\vec{m}}
\newcommand{\vr}{\vec{r}}
\newcommand{\vs}{\vec{s}}
\newcommand{\vu}{\vec{u}}
\newcommand{\vv}{\vec{v}}
\newcommand{\vw}{\vec{w}}
\newcommand{\vx}{\vec{x}}
\newcommand{\vy}{\vec{y}}
\newcommand{\vz}{\vec{z}}
\newcommand{\vzero}{\vec{0}}
\newcommand{\vF}{\vec{F}}
\newcommand{\vG}{\vec{G}}
\newcommand{\vH}{\vec{H}}
\newcommand{\vR}{\vec{R}}
\newcommand{\vT}{\vec{T}}
\newcommand{\vN}{\vec{N}}
\newcommand{\vL}{\vec{L}}
\newcommand{\vA}{\vec{A}}
\newcommand{\vB}{\vec{B}}
\newcommand{\vS}{\vec{S}}
\newcommand{\proj}{\text{proj}}
\newcommand{\comp}{\text{comp}}
\newcommand{\nin}{}
\newcommand{\vecmag}[1]{\left\lVert #1\right\rVert}
\newcommand{\grad}{\nabla}
\newcommand\restrict[2]{\raise-.5ex\hbox{$\Big|_{#1}^{#2}$}}
\DeclareMathOperator{\curl}{curl}
\DeclareMathOperator{\divg}{div}
\newcommand{\amp}{&}
\def\ptxmacros{}
EOF
. '\fi',
        PTX => ''
    )
);

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

1;
