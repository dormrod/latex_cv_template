\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv_dom}[2019/08/20 Custom CV class]


% ------ Class Options ------

% Load base article class
\LoadClass{article}

% Parse options 
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ExecuteOptions{a4paper,11pt,final,}
\ProcessOptions\relax

% ------ Formatting ------

% Encoding
\usepackage[utf8]{inputenc}

% Margins
\RequirePackage[scale=0.8, top=2cm]{geometry}

% Font style and size
\RequirePackage[T1]{fontenc}
\IfFileExists{lmodern.sty}
{\RequirePackage{lmodern}}{}
\renewcommand{\familydefault}{\sfdefault}

% Line spacing
\setlength{\parindent}{0pt}
\setlength{\parskip}{0pt}
\linespread{1.1}

% Headers
\RequirePackage{fancyhdr}
\fancypagestyle{plain}{
	\renewcommand{\headrulewidth}{0pt}
	\renewcommand{\footrulewidth}{0pt}
	\fancyhf{}}

% ------ Title ------
\RequirePackage{hyperref}
\hypersetup{
    colorlinks=true,
    linkcolor=blue,
    filecolor=blue,      
    urlcolor=blue,
}
\RequirePackage{fontawesome}
\newcommand{\name}[1]{\def\@name{#1}}
\newcommand{\cvtitle}[1]{\def\@cvtitle{#1}}
\newcommand{\tagline}[1]{\def\@tagline{#1}}
\newcommand{\githubpage}[2]{\def\@githublink{#1}\def\@githubname{#2}}
\newcommand{\email}[1]{\def\@email{#1}}
\newcommand{\mobile}[1]{\def\@mobile{#1}}
\renewcommand{\maketitle}{
	\begin{center}
		{\Large\bfseries\upshape \@name}\\ \bigskip
		{\Large\mdseries\upshape \@cvtitle}\\ \medskip
		{\normalsize \@tagline} \\ \medskip
		{\normalsize \faGithub \, \href{\@githublink}{\@githubname} \quad 
		\normalsize \faMailReply \, \@email \quad
		\normalsize \faMobile \, \@mobile}
	\end{center}
}

% ------ Section ------
\renewcommand{\section}[1]{
  {\medskip \large\bfseries\upshape #1 \vspace{2mm} \hrule \bigskip}
}

% ------ CV Entries ------
\newcommand{\entry}[4]{
	{\normalsize\bfseries\upshape #1}
	{\normalsize \hfill #3\\}
	{\normalsize #2}
	{\normalsize \hfill #4}
}
\RequirePackage{changepage}
\newcommand{\point}[1]{
	{\begin{adjustwidth}{0.4cm}{2cm}
		$\bullet$ \normalsize #1
	\end{adjustwidth}}	
}

% ------ Publications ------
\newcommand{\pub}[5]{
	 {\normalsize \bfseries #1},
	 {\normalsize #2},
	 {\normalsize \textit{#3}},
	 {\normalsize #4 \,}
	 {\small \href{#5}{\faExternalLink}\\}
}



\endinput