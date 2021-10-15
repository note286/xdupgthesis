
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{XDUthesis}[2015/01/01 XDU, Thesis document class, version 0.1.0]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%   class and packages

%%%%%%%%%%%%%%%%%%%%
%% Options
%%%%%%%%%%%%%%%%%%%%

%% disable oneside option
\DeclareOption{oneside}{\OptionNotUsed}

%% driver
\newif\ifXDU@Option@dvipdfm \XDU@Option@dvipdfmtrue
\DeclareOption{dvips}{\XDU@Option@dvipdfmfalse}
\DeclareOption{dvipdfm}{\XDU@Option@dvipdfmtrue}

%% print version or electronic version
\newif\ifXDU@Option@PrintVersion \XDU@Option@PrintVersiontrue
\DeclareOption{pversion}{\XDU@Option@PrintVersiontrue}
\DeclareOption{eversion}{\XDU@Option@PrintVersionfalse}

%% info
\newif\ifXDU@Option@info \XDU@Option@infotrue
\DeclareOption{noinfo}{\XDU@Option@infofalse}

%% ref
\newif\ifXDU@Option@ref@sort \XDU@Option@ref@sortfalse
\newif\ifXDU@Option@ref@compress \XDU@Option@ref@compressfalse
\DeclareOption{refsort}{\XDU@Option@ref@sorttrue}
\DeclareOption{refcompress}
  {\XDU@Option@ref@sorttrue\XDU@Option@ref@compresstrue}

%% others
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions\relax

%%%%%%%%%%%%%%%%%%%%
%% load class and packages
%%%%%%%%%%%%%%%%%%%%

%% book
%%
\LoadClass[a4paper,cs4size,twoside,openright,fancyhdr,fntef,punct]{ctexbook}

%% calc
\RequirePackage{calc}

%% ifthen
\RequirePackage{ifthen}

%% ifpdf
\RequirePackage{ifpdf}

\RequirePackage[titles]{tocloft}

\RequirePackage{caption2}

%% natbib
\ifXDU@Option@ref@sort
  \ifXDU@Option@ref@compress
    \RequirePackage[numbers,sort&compress]{natbib}
  \else
    \RequirePackage[numbers,sort]{natbib}
  \fi
\fi

%% hyperref
\ifpdf
  \RequirePackage[pdftex]{hyperref}
\else
  \ifXDU@Option@dvipdfm
    \RequirePackage[dvipdfm]{hyperref}
  \else
    \RequirePackage[dvips]{hyperref}
  \fi
\fi

%% color
\ifXDU@Option@PrintVersion\relax\else
  \RequirePackage{color}
\fi

%% config file
\AtEndOfPackage{\makeatletter\input{XDUthesis.def}\makeatother}
\AtEndOfPackage{\makeatletter\input{XDUthesis.cfg}\makeatother}
\AtEndOfPackage{\makeatletter\renewcommand{\numberline}[1]{%
\settowidth\@tempdimb{#1\hspace{0.25em}}%
\ifdim\@tempdima<\@tempdimb%
  \@tempdima=\@tempdimb%
\fi
\hb@xt@\@tempdima{\@cftbsnum #1\@cftasnum\hfil}\@cftasnumb}\makeatother}
\AtEndOfPackage{\makeatletter\@addtoreset{equation}{chapter}\makeatother}
\AtEndOfPackage{\makeatletter \renewcommand{\figurename}{图} \renewcommand{\tablename}{表}
 \def\@caption#1[#2]#3{%
   \par
   \addcontentsline{\csname ext@#1\endcsname}{#1}%
                   {\protect\numberline{\csname #1name\endcsname\hskip0.5em\csname the#1\endcsname}%
                   {\ignorespaces #2}}%
   \begingroup
   \@parboxrestore
   \if@minipage
   \@setminipage
   \fi
   \normalsize
   \@makecaption{\csname fnum@#1\endcsname}{\ignorespaces #3}\par
   \endgroup}
 \renewcommand*\l@figure{\@dottedtocline{1}{0em}{4em}}
 \let\l@table\l@figure \makeatother}

%%%%%%%%%%%%%%%%%%%%
%% setup packages
%%%%%%%%%%%%%%%%%%%%

%% hyperref
  % GBK -> Unicode
\AtBeginDvi{\special{pdf:tounicode GBK-EUC-UCS2}}
  % setup
\ifXDU@Option@PrintVersion
  \hypersetup{
    a4paper,
    CJKbookmarks,
    bookmarksnumbered,
    plainpages    = false,
    pdfstartview  = FitH
  }
\else
  \definecolor{XDU@hypercolor@darkgreen}{rgb}{0.1,0.5,0.1}
  \hypersetup{
    a4paper,
    CJKbookmarks,
    bookmarksnumbered,
    colorlinks,
    linkcolor     = black,
    anchorcolor   = black,
    citecolor     = black,
    urlcolor      = black,
    plainpages    = false,
    pdfstartview  = FitH
  }
\fi

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%   utilities

\DeclareRobustCommand{\XDU@toc@add}[1]
  {\cleardoublepage\phantomsection\addcontentsline{toc}{chapter}{#1}}

%% underline
\def\CJKunderlinecolor{}
\def\XDU@@underline[#1]#2{\CTEXunderline{\hbox to #1{\hfill{#2}\hfill}}}
\DeclareRobustCommand{\XDU@underline}
  {\@ifnextchar[\XDU@@underline\CTEXunderline}

\DeclareRobustCommand*{\XDU@bold}{\bfseries}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%    font

%% family
\DeclareRobustCommand*{\XDU@font@st}{\songti}
\DeclareRobustCommand*{\XDU@font@ht}{\heiti}
\DeclareRobustCommand*{\XDU@font@fs}{\fangsong}
\DeclareRobustCommand*{\XDU@font@ks}{\kaishu}
\DeclareRobustCommand*{\XDU@font@ls}{\lishu}
\DeclareRobustCommand*{\XDU@font@yy}{\youyuan}

%% size
\DeclareRobustCommand*{\XDU@font@zihao}[1]{\zihao{#1}\setlength{\baselineskip}{20pt}}
\renewcommand*{\baselinestretch}{1}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%    document setting

%% page ql head
\setlength{\textwidth}{\paperwidth}%
\setlength{\textheight}{\paperheight}%
\setlength\marginparwidth{0cm}%
\setlength\marginparsep{0cm}%
\addtolength{\textwidth}{-5.5cm}% 2.5+2.5+0.5
\setlength{\oddsidemargin}{3cm-1in-\hoffset}%
\setlength{\evensidemargin}{2.5cm-1in-\hoffset}%
\setlength{\topmargin}{2cm-1in-\voffset}%
\setlength{\headheight}{31pt}%
\setlength{\headsep}{0pt}%
\setlength{\textheight}{24cm}%
\setlength{\footskip}{\paperheight-3cm-6pt-\textheight-1.75cm}%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%    head and foot

%% remove header from empty page

%% label of even page header
\def\XDU@hdr@thesistitle
  {\XDU@label@university\XDU@value@degreemark\XDU@value@thesis}

%% the double line under header
\newcommand{\makeheadrule}{%
\makebox[0pt][l]{\rule[9pt]{\headwidth}{0.5pt}}%
\rule[8pt]{\headwidth}{0.5pt}}
\renewcommand{\headrule}{%
{\if@fancyplain\let\headrulewidth\plainheadrulewidth\fi
\makeheadrule}}

%% set header
\fancypagestyle{plain}{
    \pagestyle{fancy}
}

\pagestyle{fancy}
\fancyhf{}
\fancyhead[CE]{{\XDU@font@st\XDU@font@zihao{5}\XDU@hdr@thesistitle}}
\fancyhead[CO]{{\XDU@font@st\XDU@font@zihao{5}\nouppercase\leftmark}}
\fancyfoot[C]{{\XDU@font@st\XDU@font@zihao{5}\thepage}}
%% par skip
%\parskip 0pt plus 6pt minus 0pt

%% section level
\setcounter{secnumdepth}{4}

%% chapter
\CTEXsetup[name={\XDU@chapter@prenumber,\XDU@chapter@afternumber},
           number={\chinese{chapter}},
           format={\centering\XDU@font@ht\XDU@font@zihao{3}},
           nameformat={},
           numberformat={},
           aftername={\quad},
           titleformat={},
           beforeskip={6pt},
           afterskip={18pt},
           indent={0pt}]{chapter}

%% chapter without number
\DeclareRobustCommand{\XDU@nchapter}[1]{\chapter*{#1}\markboth{#1}{}}

%% section
\CTEXsetup[name={,},
           number={\thesection},
           format={\raggedright\XDU@bold\XDU@font@st\XDU@font@zihao{-3}},
           nameformat={},
           numberformat={},
           aftername={\quad},
           titleformat={},
           beforeskip={18pt plus 0pt minus 0pt},
           afterskip={12pt},
           indent={0pt}]{section}

%% subsection
\CTEXsetup[name={,},
           number={\thesubsection},
           format={\raggedright\XDU@font@st\XDU@font@zihao{4}},
           nameformat={},
           numberformat={},
           aftername={\quad},
           titleformat={},
           beforeskip={12pt plus 0pt minus 0pt},
           afterskip={6pt},
           indent={2em}]{subsection}

%% subsubsection
\CTEXsetup[name={,},
           number={\thesubsubsection},
           format={\raggedright\XDU@font@st\XDU@font@zihao{-4}},
           nameformat={},
           numberformat={},
           aftername={\quad},
           titleformat={},
           beforeskip={6pt plus 0pt minus 0pt},
           afterskip={0pt},
           indent={4em}]{subsubsection}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%    figure and table

%% figure name
\CTEXoptions[figurename={\zihao{5}\XDU@label@figure@cap}]

%% table name
\CTEXoptions[tablename={\zihao{5}\XDU@label@table@cap}]
\newcommand{\tabincell}[2]{\begin{tabular}{@{}#1@{}}#2\end{tabular}} %转行

\renewcommand{\theequation}{\arabic{chapter}-\arabic{equation}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%    chinese  cover
%% ql first
\DeclareRobustCommand{\XDU@make@cover}
{{\CTEXnoindent\thispagestyle{empty}%
    \normalfont\XDU@font@st\XDU@font@zihao{2}\setlength{\baselineskip}{30pt}%
    \makebox[\textwidth]{\rule{0pt}{12cm}}
    \rule[-3.2cm]{0pt}{3.2cm}\parbox[t]{\textwidth}{%
    \begin{center}%
        {\XDU@bold\XDU@value@thesis@title}%
    \end{center}%
    }
    \makebox[\textwidth]{\rule{0pt}{3.5cm}}
    \rule[-3.2cm+15pt]{0pt}{3.2cm}\hspace{3cm}\parbox[t]{9cm}{%
    \XDU@font@zihao{4}\setlength{\baselineskip}{30pt}%
    \newlength{\linelength}
    \setlength{\linelength}{9cm-4.5em}
    \XDU@bold\XDU@font@ht{作者姓名~}\XDU@font@st\XDU@underline[\linelength]{\XDU@value@author@name}\\%
    \setlength{\linelength}{9cm-9.5em}
    \XDU@bold\XDU@font@ht{指导教师姓名、职称~}\XDU@font@st\XDU@underline[\linelength]{\XDU@value@advisor@name~\XDU@value@advisor@title}\\%
    \setlength{\linelength}{9cm-6.5em}
    \XDU@bold\XDU@font@ht{申请学位类别~}\XDU@font@st\XDU@underline[\linelength]{\XDU@value@degree}%
    }
\clearpage\thispagestyle{empty}\CTEXindent\cleardoublepage}}

\DeclareRobustCommand{\XDU@make@title}
  {{\cleardoublepage\CTEXnoindent\thispagestyle{empty}%

    \normalfont\XDU@font@st\renewcommand{\baselinestretch}{1.2}\zihao{5}%
    \rule{0pt}{1.35cm}\parbox[b]{4.5cm}{
        \XDU@bold\XDU@label@cover@UDC\XDU@underline[73pt]{\XDU@value@thesis@UDC}\par%
        \vspace{2pt}%
        \XDU@bold\XDU@label@cover@classification\XDU@underline[73pt]{\XDU@value@thesis@classification}%
    }
    \hfill\parbox[b]{4.5cm}{
        \XDU@bold\XDU@label@cover@studentNo\XDU@underline[83pt]{\XDU@value@thesis@studentNo}\par%
        \vspace{2pt}%
        \XDU@bold\XDU@label@cover@confidential\XDU@underline[83pt]{\XDU@value@thesis@confidential}%
    }

\renewcommand{\baselinestretch}{1}%
    \vspace{2.05cm}%
    \makebox[\textwidth]{\rule{0pt}{4.5cm}\shortstack[c]{
        \XDU@bold\XDU@font@ht\XDU@font@zihao{1}\setlength{\baselineskip}{30pt}\XDU@label@university\\%
        \vspace{60pt} \\%
        \XDU@bold\XDU@font@st\XDU@font@zihao{-1}\setlength{\baselineskip}{30pt}\XDU@value@degreemark\XDU@value@thesis%
    }}
    \rule{0pt}{2.7cm}%
    \rule[-3.2cm]{0pt}{3.2cm}\parbox[t]{\textwidth}{
    \begin{center}%
     \XDU@bold\XDU@font@zihao{2}\setlength{\baselineskip}{30pt}\XDU@value@thesis@title%
    \end{center}%
    }

    \vspace{2.5cm}%
    \hspace{4.5cm}\parbox{10.5cm}{
        \XDU@font@st\XDU@font@zihao{4}\setlength{\baselineskip}{32pt}%
        {\XDU@bold\XDU@label@cover@author}\XDU@value@author@name\\%
        {\XDU@bold\XDU@label@cover@major}\XDU@value@author@major\\%
        {\XDU@bold\XDU@label@cover@submajor}\XDU@value@author@submajor\\%
        {\XDU@bold\XDU@label@cover@degree}\XDU@value@degree\\%
        {\XDU@bold\XDU@label@cover@advisor}\XDU@value@advisor@name~\XDU@value@advisor@title\\%
        {\XDU@bold\XDU@label@cover@school}\XDU@value@school\\%
        {\XDU@bold\XDU@label@cover@submit@date}\XDU@value@thesis@submit@date%
    }
   \clearpage\thispagestyle{empty}%
   \renewcommand{\baselinestretch}{1}%
   \CTEXindent\cleardoublepage}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%    english  cover

\DeclareRobustCommand{\XDU@make@titleenglish}
  {{\cleardoublepage\CTEXnoindent\thispagestyle{empty}%
    \normalfont\XDU@font@st%

    \rule[-3.5cm]{0pt}{3.5cm}\parbox[t]{\textwidth}{%
    \XDU@font@zihao{2}\setlength{\baselineskip}{30pt}%
    \begin{center}%
        {\XDU@bold\XDU@evalue@thesis@title}%
    \end{center}%
    }
    \rule{0pt}{2.5cm}%
    \rule[-5.5cm]{0pt}{5.5cm}\parbox[t]{\textwidth}{%
    \XDU@font@zihao{3}\setlength{\baselineskip}{30pt}%
    \begin{center}%
A\space\XDU@evalue@papertype\space submitted to\par\XDU@elabel@university\par%
in partial fulfillment of the requirements \par for the degree of\space\XDU@evalue@degree%
\par in\space\XDU@evalue@author@submajor%
    \end{center}%
    }
    \rule{0pt}{7.2cm}%
    \rule[-4.5cm]{0pt}{4.5cm}\parbox[t]{\textwidth}{%
    \XDU@font@zihao{3}\setlength{\baselineskip}{30pt}%
    \begin{center}%
By \par%
\XDU@evalue@author@name\par%
\XDU@elabel@cover@advisor\XDU@evalue@advisor@name~~{Title:}\XDU@evalue@advisor@title\par%
\XDU@evalue@thesis@submit@date\par%
    \end{center}%
    }
   \clearpage\thispagestyle{empty}%
   \CTEXindent\cleardoublepage}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%    statement and copyright

\DeclareRobustCommand{\XDU@make@statementandcopyright}
  {{\cleardoublepage\CTEXnoindent\thispagestyle{empty}%
  \normalfont\XDU@font@st%
   \begin{center}%
   \bfseries\XDU@font@zihao{4}%
     \XDU@label@stat@statement%
   \end{center}%
   \XDU@font@zihao{-4}%
   \hspace*{2em}\CTEXindent\XDU@value@stat@statement\CTEXnoindent%
  \vskip 20pt%
   \hspace*{2em}\XDU@lable@stat@auther\XDU@underline[100pt]{}\hspace*{1em}%
    \hfill \XDU@lable@stat@date\XDU@underline[100pt]{}\hspace*{1em}
  \vskip \stretch{6}%
   \begin{center}%
     \bfseries\XDU@font@zihao{4}%
     \XDU@lable@stat@copyright%
   \end{center}%
   \XDU@font@zihao{-4}%
   \hspace*{2em}\CTEXindent\XDU@value@stat@copyright\CTEXnoindent%
  \vskip 20pt%
   \normalfont\XDU@font@st\XDU@font@zihao{-4}%
   \hspace*{2em}\XDU@lable@stat@auther\XDU@underline[100pt]{}\hspace*{1em}%
    \hfill \XDU@lable@stat@advisor\XDU@underline[100pt]{}\hspace*{1em}%
  \vskip 20pt%
   \hspace*{2em}\XDU@lable@stat@date\XDU@underline[100pt]{}\hspace*{1em}%
    \hfill \XDU@lable@stat@date\XDU@underline[100pt]{}\hspace*{1em}%
  \vskip \stretch{1}%
  \clearpage\thispagestyle{empty}%
  \CTEXindent\cleardoublepage}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%    abstract

%% chinese abstract
\newenvironment{abstract}
  {\XDU@toc@add{\XDU@toc@abstract}%
   \XDU@nchapter{\XDU@label@abstract}\XDU@font@zihao{-4}}
  {\cleardoublepage}

%% chinese keywords
\DeclareRobustCommand{\keywords}[1]
  {{\CTEXnoindent\vspace{20pt}%
   \normalfont\XDU@font@st\bfseries\XDU@font@zihao{-4}%
   \XDU@label@keywords%
   \normalfont\XDU@font@st\XDU@font@zihao{-4}%
   {#1}\CTEXindent}}

%% english abstract
\newenvironment{englishabstract}
  {\XDU@toc@add{\XDU@etoc@abstract}\XDU@nchapter{\XDU@elabel@abstract}%
   \vspace{-2ex}\CTEXnoindent\normalfont\XDU@font@zihao{-4}%
   \CTEXnoindent}
  {\cleardoublepage}

%% english keywords
\DeclareRobustCommand{\englishkeywords}[1]
  {{\CTEXnoindent\vspace{2ex}%
   \normalfont\XDU@font@st\bfseries\XDU@font@zihao{-4}%
   \XDU@elabel@keywords~%
   \normalfont\XDU@font@st\XDU@font@zihao{-4}%
   {#1}\CTEXindent}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%    content
    \renewcommand{\cftdot}{\ldots}
    \renewcommand{\cftdotsep}{0.1}
    \setlength{\cftbeforechapskip}{0pt}
    \setlength{\cftbeforesecskip}{0pt}
    \setlength{\cftbeforesubsecskip}{0pt}
    \renewcommand{\cftchapfont}{\XDU@font@ht\XDU@font@zihao{-4}}
    \renewcommand{\cftsecfont}{\XDU@font@st\XDU@font@zihao{-4}}
    \renewcommand{\cftsubsecfont}{\XDU@font@st\XDU@font@zihao{-4}}
    \renewcommand{\cftchapleader}{\cftdotfill{\cftchapdotsep}}
    \renewcommand{\cftchapdotsep}{\cftdotsep}
    \renewcommand{\cftchappagefont}{\XDU@font@st\XDU@font@zihao{-4}}
    \renewcommand{\cftsecpagefont}{\XDU@font@zihao{-4}}
    \renewcommand{\cftsubsecpagefont}{\XDU@font@zihao{-4}}
    \renewcommand{\cftfigfont}{\XDU@font@st\XDU@font@zihao{-4}}
    \renewcommand{\cftloftitlefont}{\XDU@font@st\XDU@font@zihao{-4}}
    \renewcommand{\cftfigpagefont}{\XDU@font@st\XDU@font@zihao{-4}}
    \renewcommand{\cfttabfont}{\XDU@font@st\XDU@font@zihao{-4}}
    \renewcommand{\cftlottitlefont}{\XDU@font@st\XDU@font@zihao{-4}}
    \renewcommand{\cfttabpagefont}{\XDU@font@st\XDU@font@zihao{-4}}

    \setlength{\abovecaptionskip}{0pt}
    \setlength{\belowcaptionskip}{0pt}
    \renewcommand{\captionlabeldelim}{\ ~}%去冒号
    \renewcommand{\captionfont}{\XDU@font@st\XDU@font@zihao{5}}

%% list of figures
\CTEXoptions[listfigurename={\XDU@label@listoffigures}]
\DeclareRobustCommand{\XDU@listoffigures}
  {\XDU@toc@add{\XDU@toc@listoffigures}%
    \listoffigures}

%% list of tables
\CTEXoptions[listtablename={\XDU@label@listoftables}]
\DeclareRobustCommand{\XDU@listoftables}
  {\XDU@toc@add{\XDU@toc@listoftables}%
    \listoftables}

%% list of Symbols
\newenvironment{symbollist}
  {\CTEXnoindent\XDU@toc@add{\XDU@toc@symbollist@title}%
   \XDU@nchapter{\XDU@label@symbollist@title}\CTEXindent%
   \begin{list}{}
    {\setlength{\topsep}{0pt}\setlength{\itemsep}{0pt}\setlength{\parsep}{0pt}
    \CTEXnoindent\normalfont\XDU@font@st\XDU@font@zihao{-4}
     \setlength{\leftmargin}{0.5\labelwidth}}}
  {\end{list}\CTEXindent\cleardoublepage}

%% list of abbreviations
\newenvironment{abbreviationlist}
  {\CTEXnoindent\XDU@toc@add{\XDU@toc@abbreviationlist@title}%
   \XDU@nchapter{\XDU@label@abbreviationlist@title}\CTEXindent%
   \begin{list}{}
    {\setlength{\topsep}{0pt}\setlength{\itemsep}{0pt}\setlength{\parsep}{0pt}
    \CTEXnoindent\normalfont\XDU@font@st\XDU@font@zihao{-4}
     \setlength{\leftmargin}{0.5\labelwidth}}}
  {\end{list}\CTEXindent\cleardoublepage}

%% content
\CTEXoptions[contentsname={\XDU@label@content}]
\DeclareRobustCommand{\XDU@tableofcontents}
  {\tableofcontents}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%    referrence
\renewcommand{\UrlFont}{\XDU@font@zihao{5}}
\CTEXoptions[bibname={\XDU@label@ref@title}]
\bibliographystyle{gbt7714-2005}

\renewenvironment{thebibliography}[1]
  {\XDU@toc@add{\XDU@toc@ref@title}%
   \XDU@nchapter{\bibname}%
   \XDU@font@zihao{5}%
   \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
   \list{\@biblabel{\@arabic\c@enumiv}}%
    {\setlength{\topsep}{0pt}\setlength{\itemsep}{0pt}\setlength{\parsep}{0pt}
    \settowidth\labelwidth{\@biblabel{#1}}%
     \leftmargin\labelwidth\advance\leftmargin\labelsep%
     \@openbib@code\usecounter{enumiv}\let\p@enumiv\@empty%
     \renewcommand\theenumiv{\@arabic\c@enumiv}}%
   \sloppy\clubpenalty4000\@clubpenalty\clubpenalty%
   \widowpenalty4000\sfcode`\.\@m}
  {\def\@noitemerr{\@latex@warning{Empty `thebibliography' environment}}%
   \endlist}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%    thanks

\renewenvironment{thanks}
  {\XDU@toc@add{\XDU@toc@thanks}%
   \XDU@nchapter{\XDU@label@thanks}}
  {}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%    resume

%% environment
\newenvironment{resume}
  {\CTEXnoindent\XDU@toc@add{\XDU@toc@resume@title}%
   \XDU@nchapter{\XDU@label@resume@title}%
   \renewcommand{\thesection}{\arabic{section}}\CTEXindent}
  {\cleardoublepage}

%% resume list
\newcounter{XDU@counter@resumelistcounter}
\newenvironment{resumelist}[1]
  {{\subsection*{\textbf{#1}}\CTEXindent}%
   \begin{list}{[\arabic{XDU@counter@resumelistcounter}]}
    {\usecounter{XDU@counter@resumelistcounter}
     \setcounter{XDU@counter@resumelistcounter}{0}
     \setlength{\topsep}{0pt}\setlength{\itemsep}{0pt}\setlength{\parsep}{0pt}
     \CTEXnoindent\normalfont\XDU@font@st\XDU@font@zihao{-4}
     \setlength{\leftmargin}{2\labelwidth}}}
  {\end{list}}

\newenvironment{resumelist*}
  {\begin{list}{}
    {\setlength{\topsep}{0pt}\setlength{\itemsep}{0pt}\setlength{\parsep}{0pt}
    \CTEXnoindent\normalfont\XDU@font@st\XDU@font@zihao{-4}
     \setlength{\leftmargin}{\labelwidth}}}
  {\end{list}}

%% resume list item
\DeclareRobustCommand{\resumelistitem}{\item{}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%    thesis structure

%% front matter
\DeclareRobustCommand{\XDUfrontmatter}
  {\XDU@make@cover%
   \XDU@make@title%
   \XDU@make@titleenglish%
   \XDU@make@statementandcopyright%
   \frontmatter\pagenumbering{Roman}%
   \setlength{\baselineskip}{20pt}}

%% premain matter
\DeclareRobustCommand{\XDUpremainmatter}
  {\XDU@listoffigures\cleardoublepage%
   \XDU@listoftables\cleardoublepage%
  }
%% main matter
\DeclareRobustCommand{\XDUmainmatter}
  {\XDU@tableofcontents\cleardoublepage%
   \mainmatter}

%% back matter
\DeclareRobustCommand{\XDUbackmatter}[1]
  {\backmatter{}#1{}}
