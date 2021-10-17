
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{XDUthesis}[2021/10/17 XDU, Thesis document class, version 0.2.1, modified by @note286, published in https://note286.github.io/xdupgthesis/]

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

%% others
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions\relax

%%%%%%%%%%%%%%%%%%%%
%% load class and packages
%%%%%%%%%%%%%%%%%%%%

%% book
%%
\PassOptionsToPackage{AutoFakeBold=3}{xeCJK}
\LoadClass[a4paper,zihao=-4,twoside,openright,punct,fontset=windows]{ctexbook}
\BeforeBeginEnvironment{document}{\setmainfont{Times New Roman}}

\RequirePackage{lmodern}

\RequirePackage{fancyhdr}

%% calc
\RequirePackage{calc}

%% ifthen
\RequirePackage{ifthen}

%% ifpdf
\RequirePackage{ifpdf}

\RequirePackage[titles]{tocloft}

\RequirePackage[labelsep=quad]{caption}

\RequirePackage{subfig}

\captionsetup[subfloat]{subrefformat=parens}

%% natbib
\RequirePackage[numbers,sort&compress]{natbib}

\let\oldcite\cite
\renewcommand{\cite}[1]{\textsuperscript{\oldcite{#1}}}

\RequirePackage{xurl}

%% hyperref
\RequirePackage[bookmarksnumbered]{hyperref}
\BeforeBeginEnvironment{document}{%
\hypersetup{%
pdftitle={\XDU@value@thesis@title},%
pdfauthor={\XDU@value@author@name},%
pdfsubject={西安电子科技大学{\XDU@value@degreemark}学位论文}%
}}

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
\newcommand{\algorithmname}{算法}
\newcommand{\equationname}{公式}
\newcommand{\assumptionname}{假设}
\newcommand{\definitionname}{定义}
\newcommand{\propositionname}{命题}
\newcommand{\lemmaname}{引理}
\newcommand{\theoremname}{定理}
\newcommand{\axiomname}{公理}
\newcommand{\corollaryname}{推论}
\newcommand{\exercisename}{练习}
\newcommand{\examplename}{例}
\newcommand{\remarkname}{注释}
\newcommand{\problemname}{问题}
\newcommand{\conjecturename}{猜想}
\renewcommand{\proofname}{证明}
\renewcommand{\chaptername}[1]{第#1章}
\newcommand{\sectionname}[1]{第~#1~节}
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%   utilities

\DeclareRobustCommand{\XDU@toc@add}[1]
  {\cleardoublepage\phantomsection\addcontentsline{toc}{chapter}{#1}}

%% underline
\def\CJKunderlinecolor{}
\def\XDU@@underline[#1]#2{\underline{\hbox to #1{\hfill{#2}\hfill}}}
\DeclareRobustCommand{\XDU@underline}
  {\@ifnextchar[\XDU@@underline\underline}

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
\ctexset{chapter={name={\XDU@chapter@prenumber,\XDU@chapter@afternumber},
           number={\chinese{chapter}},
           format={\centering\XDU@font@ht\XDU@font@zihao{3}},
           nameformat={},
           numberformat={},
           aftername={\quad},
           titleformat={},
           beforeskip={6pt},
           afterskip={18pt},
           indent={0pt}}}

%% chapter without number
\DeclareRobustCommand{\XDU@nchapter}[1]{\chapter*{#1}\markboth{#1}{}}

%% section
\ctexset{section={name={,},
           number={\thesection},
           format={\raggedright\XDU@bold\XDU@font@st\XDU@font@zihao{-3}},
           nameformat={},
           numberformat={},
           aftername={\quad},
           titleformat={},
           beforeskip={18pt plus 0pt minus 0pt},
           afterskip={12pt},
           indent={0pt}}}

%% subsection
\ctexset{subsection={name={,},
           number={\thesubsection},
           format={\raggedright\XDU@font@st\XDU@font@zihao{4}},
           nameformat={},
           numberformat={},
           aftername={\quad},
           titleformat={},
           beforeskip={12pt plus 0pt minus 0pt},
           afterskip={6pt},
           indent={2em}}}

%% subsubsection
\ctexset{subsubsection={name={,},
           number={\thesubsubsection},
           format={\raggedright\XDU@font@st\XDU@font@zihao{-4}},
           nameformat={},
           numberformat={},
           aftername={\quad},
           titleformat={},
           beforeskip={6pt plus 0pt minus 0pt},
           afterskip={0pt},
           indent={4em}}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%    figure and table

%% figure name
\ctexset{figurename={\zihao{5}\XDU@label@figure@cap}}

%% table name
\ctexset{tablename={\zihao{5}\XDU@label@table@cap}}
\newcommand{\tabincell}[2]{\begin{tabular}{@{}#1@{}}#2\end{tabular}} %转行

\renewcommand{\theequation}{\arabic{chapter}-\arabic{equation}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%    chinese  cover
%% ql first
\DeclareRobustCommand{\XDU@make@cover}
{{\parindent=0pt\thispagestyle{empty}%
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
\clearpage\thispagestyle{empty}\parindent=2\ccwd\cleardoublepage}}

\DeclareRobustCommand{\XDU@make@title}
  {{\cleardoublepage\parindent=0pt\thispagestyle{empty}%

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
   \parindent=2\ccwd\cleardoublepage}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%    english  cover

\DeclareRobustCommand{\XDU@make@titleenglish}
  {{\cleardoublepage\parindent=0pt\thispagestyle{empty}%
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
   \parindent=2\ccwd\cleardoublepage}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%    statement and copyright

\DeclareRobustCommand{\XDU@make@statementandcopyright}
  {{\cleardoublepage\parindent=0pt\thispagestyle{empty}%
  \normalfont\XDU@font@st%
   \begin{center}%
   \bfseries\XDU@font@zihao{4}%
     \XDU@label@stat@statement%
   \end{center}%
   \XDU@font@zihao{-4}%
   \hspace*{2em}\parindent=2\ccwd\XDU@value@stat@statement\parindent=0pt%
  \vskip 20pt%
   \hspace*{2em}\XDU@lable@stat@auther\XDU@underline[100pt]{}\hspace*{1em}%
    \hfill \XDU@lable@stat@date\XDU@underline[100pt]{}\hspace*{1em}
  \vskip \stretch{6}%
   \begin{center}%
     \bfseries\XDU@font@zihao{4}%
     \XDU@lable@stat@copyright%
   \end{center}%
   \XDU@font@zihao{-4}%
   \hspace*{2em}\parindent=2\ccwd\XDU@value@stat@copyright\parindent=0pt%
  \vskip 20pt%
   \normalfont\XDU@font@st\XDU@font@zihao{-4}%
   \hspace*{2em}\XDU@lable@stat@auther\XDU@underline[100pt]{}\hspace*{1em}%
    \hfill \XDU@lable@stat@advisor\XDU@underline[100pt]{}\hspace*{1em}%
  \vskip 20pt%
   \hspace*{2em}\XDU@lable@stat@date\XDU@underline[100pt]{}\hspace*{1em}%
    \hfill \XDU@lable@stat@date\XDU@underline[100pt]{}\hspace*{1em}%
  \vskip \stretch{1}%
  \clearpage\thispagestyle{empty}%
  \parindent=2\ccwd\cleardoublepage}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%    abstract

%% chinese abstract
\newenvironment{abstract}
  {\XDU@toc@add{\XDU@toc@abstract}%
   \XDU@nchapter{\XDU@label@abstract}\XDU@font@zihao{-4}}
  {\cleardoublepage}

%% chinese keywords
\DeclareRobustCommand{\keywords}[1]
  {{\parindent=0pt\vspace{20pt}%
   \normalfont\XDU@font@st\bfseries\XDU@font@zihao{-4}%
   \XDU@label@keywords%
   \normalfont\XDU@font@st\XDU@font@zihao{-4}%
   {#1}\parindent=2\ccwd}}

%% english abstract
\newenvironment{englishabstract}
  {\XDU@toc@add{\XDU@etoc@abstract}\XDU@nchapter{\XDU@elabel@abstract}%
   \vspace{-2ex}\parindent=0pt\normalfont\XDU@font@zihao{-4}%
   \parindent=0pt}
  {\cleardoublepage}

%% english keywords
\DeclareRobustCommand{\englishkeywords}[1]
  {{\parindent=0pt\vspace{2ex}%
   \normalfont\XDU@font@st\bfseries\XDU@font@zihao{-4}%
   \XDU@elabel@keywords~%
   \normalfont\XDU@font@st\XDU@font@zihao{-4}%
   {#1}\parindent=2\ccwd}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%    content
    \renewcommand\p@figure{\figurename}
    \renewcommand\p@table{\tablename}
    \DeclareCaptionListFormat{listoffigtab}{#1~#2}
    \captionsetup{listformat=listoffigtab}
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

    \setlength{\abovecaptionskip}{6bp}
    \setlength{\belowcaptionskip}{0pt}
    \renewcommand{\captionfont}{\XDU@font@st\XDU@font@zihao{5}}

%% list of figures
\ctexset{listfigurename={\XDU@label@listoffigures}}
\DeclareRobustCommand{\XDU@listoffigures}
  {\XDU@toc@add{\XDU@toc@listoffigures}%
    \listoffigures}

%% list of tables
\ctexset{listtablename={\XDU@label@listoftables}}
\DeclareRobustCommand{\XDU@listoftables}
  {\XDU@toc@add{\XDU@toc@listoftables}%
    \listoftables}

\RequirePackage{tabularx}

%% list of Symbols
\newenvironment{symbollist}
  {\parindent=0pt\XDU@toc@add{\XDU@toc@symbollist@title}%
   \XDU@nchapter{\XDU@label@symbollist@title}\parindent=.5\ccwd%
   \renewcommand{\arraystretch}{1.6666666667}
     \tabularx{\linewidth}{p{12em}X}}
  {\endtabularx\parindent=2\ccwd\cleardoublepage}

%% list of abbreviations
\newenvironment{abbreviationlist}
  {\parindent=0pt\XDU@toc@add{\XDU@toc@abbreviationlist@title}%
   \XDU@nchapter{\XDU@label@abbreviationlist@title}\parindent=.5\ccwd%
   \renewcommand{\arraystretch}{1.6666666667}
     \tabularx{\linewidth}{p{7.5em}p{7.5em}X}}
  {\endtabularx\parindent=2\ccwd\cleardoublepage}

%% content
\ctexset{contentsname={\XDU@label@content}}
\DeclareRobustCommand{\XDU@tableofcontents}
  {\tableofcontents}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%    referrence
\renewcommand{\UrlFont}{\XDU@font@zihao{5}}
\ctexset{bibname={\XDU@label@ref@title}}
\bibliographystyle{gbt7714-numerical}

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
  {\parindent=0pt\XDU@toc@add{\XDU@toc@resume@title}%
   \XDU@nchapter{\XDU@label@resume@title}%
   \renewcommand{\thesection}{\arabic{section}}\parindent=2\ccwd}
  {\cleardoublepage}

%% resume list
\newcounter{XDU@counter@resumelistcounter}
\newenvironment{resumelist}[1]
  {{\subsection*{\textbf{#1}}\parindent=2\ccwd}%
   \begin{list}{[\arabic{XDU@counter@resumelistcounter}]}
    {\usecounter{XDU@counter@resumelistcounter}
     \setcounter{XDU@counter@resumelistcounter}{0}
     \setlength{\topsep}{0pt}\setlength{\itemsep}{0pt}\setlength{\parsep}{0pt}
     \parindent=0pt\normalfont\XDU@font@st\XDU@font@zihao{-4}
     \setlength{\leftmargin}{2\labelwidth}}}
  {\end{list}}

\newenvironment{resumelist*}
  {\begin{list}{}
    {\setlength{\topsep}{0pt}\setlength{\itemsep}{0pt}\setlength{\parsep}{0pt}
    \parindent=0pt\normalfont\XDU@font@st\XDU@font@zihao{-4}
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
