% MIV - Classe métabolique
% 2015-10-07 Simon Besson-Girard simon (at) besson-girard.fr
% --- Class structure: identification part
% ---
\ProvidesClass{metabo}[2015/10/07 version 1.00 MIV - Classe métabolique]
\NeedsTeXFormat{LaTeX2e}
% --- Class structure: declaration of options part
% ---
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
% --- Class structure: execution of options part
% ---
\ProcessOptions*
% --- Class structure: declaration of options part
% ---
\LoadClass[twoside]{article}

% --- Page layout
% ---
\RequirePackage[left=2.5cm,right=2.5cm,top=2.5cm,bottom=2.5cm]{geometry}
%
\RequirePackage{lastpage}
\RequirePackage{fancyhdr}
	\fancypagestyle{firstpage}{
	\fancyhf{} % clear all six fields
	\renewcommand{\headrulewidth}{0pt}
	\renewcommand{\footrulewidth}{.5pt}
	\renewcommand{\footrule}{\hbox to\headwidth{\color{mivgreen}\leaders\hrule height \footrulewidth\hfill}}
	\renewcommand{\headrule}{\hbox to\headwidth{\color{mivgreen}\leaders\hrule height \headrulewidth\hfill}}
	\fancyfoot[R]{\thepage\,/\,\pageref{LastPage}}
	}
	\fancypagestyle{followingpage}{
	\fancyhf{} % clear all six fields
	\fancyhead[LO,RE]{\textcolor{mivblue}{UE R\'eseaux m\'etaboliques}}
	\fancyhead[RO,LE]{\includegraphics[height=6ex]{miv_logo.png}\vspace{-13pt}}
	\fancyfoot[LE,RO]{\thepage\,/\,\pageref{LastPage}}
	\renewcommand{\headrulewidth}{.5pt}
	\renewcommand{\footrulewidth}{.5pt}
	\renewcommand{\footrule}{\hbox to\headwidth{\color{mivgreen}\leaders\hrule height \footrulewidth\hfill}}
	\renewcommand{\headrule}{\hbox to\headwidth{\color{mivgreen}\leaders\hrule height \headrulewidth\hfill}}
	}
	% defining where to execute the different styles
	\pagestyle{followingpage}
	\AtBeginDocument{\thispagestyle{firstpage}}
%
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[english,frenchb]{babel}
\NoAutoSpaceBeforeFDP % espaces devant les doubles ponctuations
%
\RequirePackage{graphicx}
\RequirePackage{color}
	\definecolor{mivblue}{RGB}{0,84,150}
	\definecolor{mivgreen}{RGB}{135,173,32}
\RequirePackage{titlesec}
\titleformat*{\section}{\Large\bfseries\sffamily\color{mivblue}}
\titleformat*{\subsection}{\large\bfseries\sffamily\color{mivblue}}
\titleformat*{\subsubsection}{\itshape\bfseries\color{mivblue}}
\RequirePackage{amsmath}
\RequirePackage{wrapfig}
\RequirePackage{multicol}
\RequirePackage{url}
\let\urlorig\url
\renewcommand{\url}[1]{%
  \begin{otherlanguage}{english}\urlorig{#1}\end{otherlanguage}%
}
%
\renewcommand\maketitle{
\IfFileExists{miv_logo.png}{%then
        \noindent\makebox[\linewidth]{\textcolor{mivgreen}{\rule{\linewidth}{0.7pt}}}
	\begin{minipage}{.2\textwidth}
	\includegraphics[width=50pt]{miv_logo.png}
        \vspace{2ex}
	\end{minipage}
	\begin{minipage}{.8\textwidth}
        \par
        \vspace{2ex}
	{\Huge\bfseries\textcolor{mivblue}{\@title}\normalsize\par}
	\end{minipage}
	\noindent\makebox[\linewidth]{\textcolor{mivgreen}{\rule{\linewidth}{0.7pt}}}
	}{%else
	
        \noindent\makebox[\linewidth]{\textcolor{mivgreen}{\rule{\linewidth}{0.7pt}}}
        \par
	\vspace{3ex}
	{\Huge\bfseries\textcolor{mivblue}{\@title}\normalsize\par}
        \vspace{2ex}
	\noindent\makebox[\linewidth]{\textcolor{mivgreen}{\rule{\linewidth}{0.7pt}}}
	}%fi
	
        {\flushright\noindent\hfill\Large\bfseries\@author\large\par}
        {\flushright\noindent\ifx\@date\@empty\else\large\@date\par\fi}
        \vspace{2ex}
}

