%%
%% This is template is based on 'Thesis.cls' by Steve Gunn and Sunil Patel
%%
%% Adpated by Alex Schlosser

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{Thesis}
              [2017/02/27 v1.0
   LaTeX document class]
\def\baseclass{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
  \edef\@curroptions{\@ptionlist{\@currname.\@currext}}
  \@tempswafalse
  \@tfor\@this:=#2\do{
    \@expandtwoargs\in@{,\@this,}{,\@curroptions,}
    \ifin@ \@tempswatrue \@break@tfor \fi}
  \let\@this\@empty
  \if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\@checkoptions{11pt}{{10pt}{11pt}{12pt}}
\PassOptionsToClass{a4paper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}

\newcommand{\setchapterpath}[1]{\def\chapterpath{#1}}
\newcommand{\setappendixpath}[1]{\def\appendixpath{#1}}

\usepackage{ifthen}
\newboolean{proposal}
\newcommand{\doifnotproposal}[1]{
  \ifthenelse{\boolean{proposal}}{}{#1}
}
\newcommand{\doifproposal}[1]{
  \ifthenelse{\boolean{proposal}}{#1}{}
}

\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space \number\day, \number\year}
\usepackage{setspace}
\onehalfspacing
\setlength{\parindent}{0pt}
\setlength{\parskip}{2.0ex plus0.5ex minus0.2ex}
\usepackage{vmargin}
\setmarginsrb           { 1.5in}  % left margin
                        { 0.6in}  % top margin
                        { 1.0in}  % right margin
                        { 0.8in}  % bottom margin
                        {  20pt}  % head height
                        {0.25in}  % head sep
                        {   9pt}  % foot height
                        { 0.3in}  % foot sep
\raggedbottom
\setlength{\topskip}{1\topskip \@plus 5\p@}
\doublehyphendemerits=10000       % No consecutive line hyphens.
\brokenpenalty=10000              % No broken words across columns/pages.
\widowpenalty=9999                % Almost no widows at bottom of page.
\clubpenalty=9999                 % Almost no orphans at top of page.
\interfootnotelinepenalty=9999    % Almost never break footnotes.
\usepackage{fancyhdr}
\lhead[\rm\thepage]{\fancyplain{}{\sl{\rightmark}}}
\rhead[\fancyplain{}{\sl{\leftmark}}]{\rm\thepage}
\chead{}\lfoot{}\rfoot{}\cfoot{}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\markboth{\@chapapp\ \thechapter\ #1}{\@chapapp\ \thechapter\ #1}}
\renewcommand{\sectionmark}[1]{}
\renewcommand{\subsectionmark}[1]{}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\usepackage{amsmath,amsfonts,amssymb,amscd,amsthm,xspace}
\usepackage[centerlast,small,sc]{caption}
\setlength{\captionmargin}{20pt}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{.85}
\renewcommand{\textfraction}{0.1}
\renewcommand{\dbltopfraction}{.85}
\renewcommand{\floatpagefraction}{0.75}
\renewcommand{\dblfloatpagefraction}{.75}
\setcounter{topnumber}{9}
\setcounter{bottomnumber}{9}
\setcounter{totalnumber}{20}
\setcounter{dbltopnumber}{9}
\usepackage{graphicx}
\usepackage{epstopdf}
\usepackage{subfig}
\usepackage{booktabs}
\usepackage{rotating}
\usepackage{listings}
\usepackage{color}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[subfigure]{tocloft}

%% ------- Define Chapter Heading Format ------- %%

\renewcommand{\@makechapterhead}[1]{
  \vspace*{60\p@}
  {\parindent \z@ \raggedright \normalfont
    \hrule                                           % horizontal line
    \vspace{5pt}                                     % add some vertical space
    \ifnum \c@secnumdepth >\m@ne
        \huge\scshape \@chapapp\space \thechapter    % Chapter followed by number
        \par\nobreak
    \fi
    \interlinepenalty\@M
    \Huge \scshape #1\par                            % chapter title
    \vspace{5pt}                                     % add some vertical space
    \hrule                                           % horizontal rule
    \nobreak
    \vskip 40\p@
  }}

% Unnumbered chapter heading style:

\renewcommand{\@makeschapterhead}[1]{
  {\parindent \z@ \raggedright
    \normalfont
    \hrule                                           % horizontal line
    \vspace{5pt}                                     % add some vertical space
    \interlinepenalty\@M
    \Huge \scshape #1\par                            % chapter title
    \vspace{5pt}                                     % add some vertical space
    \hrule                                           % horizontal line
    \nobreak
    \vskip 40\p@
  }}

\newcommand{\chapterhead}[1]{
  {\parindent \z@   
    \normalfont
    \hrule                                           % horizontal line
    \vspace{15pt}                                     % add some vertical space
    \interlinepenalty\@M
    \Huge \scshape #1\par                            % chapter title
    \vspace{5pt}                                     % add some vertical space
    \hrule                                           % horizontal line
    \nobreak
    \vskip 10\p@
  }}

\renewcommand*\cftchapfont{\hypersetup{linkcolor=black} \bf}
\renewcommand*{\cftfigfont}{Figure }
\renewcommand*{\cfttabfont}{Table }

\renewcommand*\contentsname{\chapterhead{Content}}
\renewcommand*\listfigurename{\chapterhead{List of Figures}}
\renewcommand*\listtablename{\chapterhead{List of Tables}}

\newcommand{\resetlst}{\lstset{captionpos=b,
        frame=tb,
        basicstyle=\scriptsize\ttfamily,
        showstringspaces=false,
        keepspaces=true}}%
\resetlst%

\usepackage[pdfpagemode={UseOutlines},bookmarks=true,
   bookmarksopenlevel=0,bookmarksnumbered=true,hypertexnames=false,
   colorlinks,linkcolor={black},citecolor={black},urlcolor={black},
   pdfstartview={FitV},unicode,breaklinks=true,bookmarksopen=true]{hyperref}


\pdfstringdefDisableCommands{
   \let\\\space
}

\newcommand*{\beginappendix}{
  \def\@chapapp{Appendix}

  \setcounter{chapter}{1}
\renewcommand{\thechapter}{\Alph{chapter}}
}

\newcommand*{\loadchapter}[2]{
  \chapter{#2}
  \lhead{Chapter \thechapter. \emph{#2}} 
  \label{chapter:#1}
  \input{\chapterpath #1}
}

\newcommand*{\loadappendix}[2]{
  \chapter{#2}
  \lhead{Appendix \thechapter. \emph{#2}}
  \label{appendix:#1}
  \input{\appendixpath #1}
}



\def\revisionstring{}
\newcommand*{\revision}[1]{\def\revisionstring{Revision: #1}}

\newcommand*{\thesistitle}[1]{\def\TITLE{#1}\title{#1}}
\newcommand*{\supervisor}[1]{\def\supname{#1}}
\newcommand*{\advisor}[1]{\def\advname{#1}}
\newcommand*{\examiner}[1]{\def\examname{#1}}
\newcommand*{\secondexaminer}[1]{\def\secondexamname{#1}}
\newcommand*{\degree}[1]{\def\degreename{#1}}
\newcommand*{\thesiskind}[1]{\def\thesisname{#1}}
\newcommand*{\authors}[1]{\def\authornames{#1}}
\newcommand*{\subject}[1]{\def\subjectname{#1}}
\newcommand*{\keywords}[1]{\def\keywordnames{#1}}
\newcommand*{\university}[2]{
  \def\univname{\texorpdfstring{\href{#2}{#1}}{#1}}
  \def\UNIVNAME{\texorpdfstring{\href{#2}{\uppercase{#1}}}{\uppercase{#1}}}
}
\newcommand*{\department}[2]{
  \def\deptname{\texorpdfstring{\href{#2}{#1}}{#1}}
}
\newcommand*{\group}[2]{
  \def\groupname{\texorpdfstring{\href{#2}{#1}}{#1}}
}
\newcommand*{\faculty}[2]{
  \def\facname{\texorpdfstring{\href{#2}{#1}}{#1}}
}

\subject     {}
\keywords    {}
\renewcommand\maketitle{
  \hypersetup{pdftitle={\@title}}
  \hypersetup{pdfsubject=\subjectname}
  \hypersetup{pdfauthor=\authornames}
  \hypersetup{pdfkeywords=\keywordnames}
  \thispagestyle{empty}
  \begin{titlepage}
    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    \setcounter{footnote}{0}
    \null\vfil
    \vskip 60\p@
    \begin{center}
      \setlength{\parskip}{0pt}
      {\LARGE \bf \TITLE \par}
      \smallskip
      by \\
	 
	  {\large \textbf{\authornames} \\[1cm]}

      {\Large \textbf{\thesisname} \\[1cm]}

      {\large \groupname \par}
      {\large \facname \par}
      {\large \deptname \par}
      {\large \univname \par}
      \bigskip
      \bigskip
      \bigskip
      {\large Supervisor \\ \textbf{\supname} \\[0.6cm]}
      \smallskip
      {\large Advisor \\ \textbf{\advname} \\[1.1cm]}
      \smallskip
      \doifnotproposal{
        {\large Reviewers \\ \textbf{\examname} \\ \textbf{\secondexamname} \\[0.75cm] }
      }
      \bigskip
      {\large \@date \\[0.8cm]}

      {\includegraphics[height=2cm]{UniLogo.pdf} \par}
      \bigskip
      {\tiny \revisionstring}
    \end{center}
    \par
    \@thanks
    \vfil\null
  \end{titlepage}
  \setcounter{footnote}{0}
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  \cleardoublepage
}

\newenvironment{declaration}{
  \addtotoc{Declaration of Authorship}
  \null\vfil
  \begin{center}{\huge\bf Declaration of Authorship\par}\end{center}
  \begin{normalsize}
}{
  \end{normalsize}
  \vfil\vfil\null
}

\newenvironment{abstract}{
  \addtotoc{Abstract}  % Add the "Abstract" page entry to the Contents
  \null\vfil
  \begin{center}
    \setlength{\parskip}{0pt}
    {\normalsize \UNIVNAME \par}
    {\normalsize \groupname \par}
    {\normalsize \deptname \par}
    \bigskip
    \bigskip
    {\huge{\textit{Abstract}} \par}
    \bigskip
    \bigskip
    {\normalsize\bf \TITLE \par}
    {\normalsize by \authornames \par}
    \bigskip
  \end{center}
}{
  \ifx\keywordnames\empty
  \else
    \par
    \bigskip
    \bigskip
    {\scriptsize{Keywords: \keywordnames} \par}
  \fi
  \vfil\vfil\vfil\null
  \cleardoublepage
}


\addtocounter{secnumdepth}{1}
\setcounter{tocdepth}{2}
\newcommand\addtotoc[1]{
  \addcontentsline{toc}{chapter}{#1}
}
\renewcommand\tableofcontents{
  \lhead{\emph{Contents}}  % Set the left side page header to "Contents"
  \begin{spacing}{1}{
      \setlength{\parskip}{1pt}
      \if@twocolumn
        \@restonecoltrue\onecolumn
      \else
        \@restonecolfalse
      \fi
      \chapter*{\contentsname
          \@mkboth{
             \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}
      \@starttoc{toc}
      \if@restonecol\twocolumn\fi
     \cleardoublepage
  }\end{spacing}
}
\renewcommand\listoffigures{
  \begin{spacing}{1}{
      \setlength{\parskip}{1pt}
      \if@twocolumn
        \@restonecoltrue\onecolumn
      \else
        \@restonecolfalse
      \fi
      \chapter*{\listfigurename
        \@mkboth{\MakeUppercase\listfigurename}
                {\MakeUppercase\listfigurename}}
      \@starttoc{lof}
      \if@restonecol\twocolumn\fi
      \cleardoublepage
  }
  \end{spacing}
}
\renewcommand\listoftables{
  \begin{spacing}{1}{
      \setlength{\parskip}{1pt}
      \if@twocolumn
        \@restonecoltrue\onecolumn
      \else
        \@restonecolfalse
      \fi
      \chapter*{\listtablename
        \@mkboth{
            \MakeUppercase\listtablename}{\MakeUppercase\listtablename}}
      \@starttoc{lot}
      \if@restonecol\twocolumn\fi
      \cleardoublepage
  }
  \end{spacing}
}

\newenvironment{acknowledgements}{
  \addtotoc{Acknowledgements}
  \begin{center}{\huge{\textit{Acknowledgements}} \par}\end{center}
  \begin{normalsize} 
  \null\vfil
}{
  \end{normalsize}
  \vfil\vfil\null
}

\newcommand\dedicatory[1]{
  \null\vfil
  \vskip 60\p@
  \begin{center}{\Large \sl #1}\end{center}
  \vfil\null
  \cleardoublepage
}

\let\oldfrontmattercmd\frontmatter
\renewcommand\frontmatter{
  \oldfrontmattercmd
  \setstretch{1.3}  % It is better to have smaller font and larger line spacing than the other way round
  \pagestyle{plain}
}

\let\oldmainmattercmd\mainmatter
\renewcommand\mainmatter{
  \addtocontents{toc}{\vspace{2em}}  % Add a gap in the Contents, for aesthetics
  \oldmainmattercmd
  \fancyhead{}  % Clears all page headers and footers
  \rhead{\thepage}  % Sets the right side header to show the page number
  \lhead{}  % Clears the left side page header
  \pagestyle{fancy}  % Finally, use the "fancy" page style to implement the FancyHdr headers
}

\renewcommand\backmatter{
  \addtocontents{toc}{\vspace{2em}}  % Add a gap in the Contents, for aesthetics
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \@mainmatterfalse
}

\endinput
%%
%% End of file `Thesis.cls'.
