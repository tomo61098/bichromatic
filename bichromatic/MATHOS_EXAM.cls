
% Declare that this style file requires at least LaTeX version 2e.
\NeedsTeXFormat{LaTeX2e}

% Provide the name of your page, the date it was last updated, and a comment about what it's used for

% test whether main document provides options. 
\ProvidesClass{MATHOS_EXAM}
%\LoadClassWithOptions{scrartcl} % ukoliko u glavnom dokumentu zelimo spec. opcije
\LoadClass[a4paper,oneside,12pt,DIV=10]{scrbook}
\usepackage{etex}
\reserveinserts{28}


% Now paste your code from the preamble here

%%% localization %%%
\usepackage[utf8]{inputenc}
%\usepackage[T1]{fontenc}
\usepackage[croatian]{babel}

%%% 


%%% picx, tables %%%

\usepackage{multicol}
\usepackage{titling}
%\usepackage{abstract}

\usepackage[affil-it]{authblk}
\usepackage{lastpage}


\usepackage{xcolor}
\usepackage{booktabs}

\usepackage[pdftex]{graphicx}
\usepackage{epstopdf}

\usepackage [linkcolor=blue]{hyperref}
\usepackage{listings}
\usepackage{array}
\usepackage{fancybox}
\usepackage{xtab}
\usepackage{tabulary}
\usepackage{calc}
%\usepackage{hyperref}
\usepackage{memhfixc}
\usepackage{amsfonts}
\usepackage{tikz}
\usepackage{verbatim}
\usepackage{wrapfig}
\usepackage{clrscode}
\usepackage{marginnote}
\usepackage{float}


% programming code 
\usepackage{listings}
\usepackage{amsmath}
\usepackage{algorithm}
\usepackage[noend]{algpseudocode}
\newcommand{\sfunction}[1]{\textsf{\textsc{#1}}}
\algrenewcommand\algorithmicforall{\textbf{foreach}}
\algrenewcommand\algorithmicindent{.8em}

\usepackage{multicol}
\usepackage{mathtools}
\usepackage{enumitem}

% font style
%\addtokomafont{disposition}{\rmfamily}
\usepackage{courier}


% geometry of paper
\usepackage{geometry}
\geometry{a4paper, top=2cm, left=2.5cm, right=3.0cm, bottom=1.0cm, includehead, includefoot}
\usepackage{subfigure}

%%% ams packages %%%
\usepackage[amsthm,thmmarks]{ntheorem}
\usepackage{thmtools}
%\usepackage{amsthm}
\usepackage{amssymb,amsmath}


\let\oldtitle\title
\renewcommand{\title}[1]{\oldtitle{#1}\def\titletext{#1}}

\usepackage{fancyhdr}
\usepackage{authoraftertitle}



\fancypagestyle{OM_lecture}{ %
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\fancyhead[c]{\OMlogo{\CourseName}{\LectureType}}
%\fancyfoot[c]{\color{white}{\thepage/\pageref{LastPage}}}

}



%%% colors

%\definecolor{lightblue}{RGB}{201,216,255}


% font types
\usepackage[sc]{mathpazo} % use mathpazo for math fonts
\usepackage{tgpagella} % but use tgpagella as main font

%\usetikzlibrary{arrows,decorations.pathmorphing,backgrounds,fit}

% math commands



% programming code
\lstloadlanguages{C++}
\lstset{language=C++,
    basicstyle={\ttfamily \scriptsize},
    backgroundcolor=\color{gray!20},                            %
    keywordstyle=\color[rgb]{0,0.5,1},                    %
    commentstyle=\color[rgb]{0.5,0.5,0.5},    %
    stringstyle=\color[rgb]{0.627,0.126,0.941},%
    showstringspaces=false,
	%numbers=left,
	tabsize = 3,
    breaklines
}




%\theoremstyle{plain} \theorembodyfont{\upshape}
\newtheorem{lema}{Lema}[chapter]
\newtheorem{teorem}{Teorem}[chapter]
\newtheorem{korolar}{Korolar}[chapter]
\newtheorem{propozicija}{Propozicija}[chapter]

\theoremstyle{remark}
\newtheorem{napomena}{Napomena}[chapter]
\newtheorem{primjedba}{Primjedba}[chapter]

\theoremstyle{definition}
\newtheorem{definicija}{Definicija}[chapter]
\newtheorem{zadatak}{Zadatak}
\newtheorem{rjesenjee}{Rje\v{s}enje}
\newtheorem{primjer}{Primjer}[chapter]


\newenvironment{rjesenje}
               {
                \def\@addpunct##1{}%
                \renewcommand\proofSymbol{\ensuremath{\blacktriangleleft}}
                \begin{proof}[\slshape Rje\v{s}enje]}%
               {\end{proof}%
                
				}
%\makeatother


%%% bibliography style
\bibliographystyle{plain} 



% Graffiti as in GKP's book "Concrete Mathematics"
% thanks to Lorenzo Pantieri and Enrico Gregorio
\def\graffito@setup{%
   \slshape\footnotesize%
   \parindent=0pt \lineskip=0pt \lineskiplimit=0pt %
   \tolerance=2000 \hyphenpenalty=300 \exhyphenpenalty=300%
   \doublehyphendemerits=100000%
   \finalhyphendemerits=\doublehyphendemerits}
%\DeclareRobustCommand{\graffito}[1]{\marginpar%
% [\graffito@setup\raggedleft\hspace{0pt}{#1}]%
% {\graffito@setup\raggedright\hspace{0pt}{#1}}}
\let\oldmarginpar\marginpar
\renewcommand{\marginpar}[1]{\oldmarginpar%
 [\graffito@setup\scriptsize\raggedleft\hspace{0pt}{#1}]%
 {\graffito@setup\scriptsize\raggedright\hspace{0pt}{#1}}}

 % logo

 
 
 %%% commands %%%%%
 

 
 
 \newcommand*{\OMlogo}[2]
 {
 \begin{tikzpicture}[remember picture,overlay]
  \node at (current page.north west) 
  {
  \begin{tikzpicture}[remember picture,overlay]
  %\fill[color=gray!20!white] (0,0) rectangle (0.7\paperwidth,-2);
  \draw(1.7,-1.5) node {\includegraphics[scale=0.23]{./gfx/mathos_logo_blue.pdf}};
  \draw[black] (3.5,-1.0) node[anchor = west] {\large \sc #1};
  \draw[black] (3.5,-1.60) node[anchor=west] {\footnotesize \href{\CourseURL}{\CourseURL}};
\end{tikzpicture}  
  };
  %\node[xshift=-0.2cm] at (current page.south) {\tikz {\draw[fill=black] (0,0) rectangle (1.8,3);}};
  \node[xshift=-3cm,yshift=-1cm] at (current page.north east) {\tikz {\draw[black] node {\Large \sc #2 };}};
  \node[xshift=-2.8cm,yshift=-1.60cm] at (current page.north east) {\tikz {\draw[black] node {\footnotesize \LectureDate};}};
  \draw(10.6,-25) node {\includegraphics[scale=2.5]{./gfx/mathos_logo_gray.pdf}}; 
  
\end{tikzpicture}
 }


% title
\makeatletter
\def\thickhrulefill{\leavevmode \leaders \hrule height 1.2ex \hfill \kern \z@}
\def\@makechapterhead#1{
\OMlogo{\CourseName}{\LectureType}
  \vspace*{10\p@}%
  {\parindent \z@ \centering \reset@font
        %\thickhrulefill\quad 
        %\scshape\bfseries\textit{\@chapapp{}  \thechapter}  
        %\quad \thickhrulefill
        \par\nobreak
        \vspace*{10\p@}%
        \interlinepenalty\@M
        \hrule
        \vspace*{10\p@}%
        \Huge \bfseries #1 \par\nobreak
        \par
        \vspace*{10\p@}%
        \hrule
        \vskip 50\p@
  }}


%%% captions

\usepackage{caption}
\DeclareCaptionFont{white}{\color{white}}
\DeclareCaptionFormat{listing}{\colorbox{gray}{\parbox{\textwidth}{#1#2#3}}}
\captionsetup[lstlisting]{format=listing,labelfont=white,textfont=white}
\captionsetup[ruled]{labelsep=period}	
	
	
	
\makeatletter\renewcommand{\ALG@name}{\sc Program}
\renewcommand{\thealgorithm}{\arabic{chapter}.\arabic{algorithm}}



%%% new environments %%%
\newenvironment{opis}[1]
    {\centering\vspace{-0.5ex}
    {\large\bfseries #1}\\[1ex]
	\small
    \begin{tabular}{p{0.9\textwidth}}
    %\hline\\
    }
    { 
   % \\[1ex]
    \end{tabular} 	
	\vspace{0.5ex}
	
}

\makeatletter
\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\makeatother