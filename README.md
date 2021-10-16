![Xidian University](xidian.png)

# 目录

- [项目名称](#项目名称)
- [项目起源](#项目起源)
- [注意事项](#注意事项)
- [使用/示例](#使用示例)
  * [编译](#编译)
    + [latexmk](#latexmk)
    + [四次编译](#四次编译)
  + [参考文献引用](#参考文献引用)
  + [中英文间空白](#中英文间空白)
- [模板来源](#模板来源)
- [编码转换](#编码转换)
- [修复错误](#修复错误)
  * [错误一](#错误一)
  * [错误二](#错误二)
  * [错误三](#错误三)
- [字体修正](#字体修正)
  * [中文字体](#中文字体)
  * [英文字体](#英文字体)
- [修复警告](#修复警告)
  * [cs4size](#cs4size)
  * [fancyhdr](#fancyhdr)
  * [fntef](#fntef)
  * [caption2](#caption2)
  * [hyperref](#hyperref)
  * [\CTEXsetup](#ctexsetup)
  * [\CTEXoptions](#ctexoptions)
  * [\CTEXnoindent](#ctexnoindent)
  * [\CTEXindent](#ctexindent)
  * [Font size](#font-size)
- [增加功能](#增加功能)
  - [参考文献条目样式](#参考文献条目样式)
  - [参考文献引用样式](#参考文献引用样式)
  - [URL自动换行](#URL自动换行)
- [作者](#修改参考文献样式)

# 项目名称

xdupgthesis-Xidian University Postgraduate Thesis

西安电子科技大学研究生学位论文模板

# 项目起源

本项目起源于身边陆续有人使用西安电子科技大学提供的LaTeX模板，却卡在无法编译，使用时出错等问题。最近感觉LaTeX水平勉强支撑对模板的修正，因此边阅读`XDUthesis.cls`文件源码边修改，水平非常有限，难免出错或有不合适的修改，可提[Issue](https://github.com/note286/xdupgthesis/issues)来反馈。

首先阅读的是压缩包内的`templet.log`文件，结合`templet.pdf`属性，推测可能的编译命令为：

```shell
latex templet
bibtex templet
latex templet
latex templet
dvipdfmx templet
```

目前已不建议使用`latex`搭配`dvipdfmx`的方式编译中文文档，甚至`pdflatex`的编译方式也不推荐，而建议使用更为先进的`xelatex`来编译中文文档，使用者最为直观的感受是无需手动在中英文之间添加空格或者`~`，`XeLaTeX`会自动处理中英文之间的空白。

此外，我们可以发现`templet.bbl`文件是空的，且`templet.pdf`内是无参考文献条目的，这是由于该模板压缩包的发布者没有将参考文献样式文件放入主目录，根本没有测试成功，没有检查日志即PDF文件是否正常就发布了。因此我们可以在各大论坛和博客中看到介绍使用西安电子科技大学研究生学位论文模板时，需要首先将`gbt7714-2005.bst`放入`XDUthesis`文件夹内这样令人啼笑皆非的操作建议。

此外在阅读`templet.log`文件的过程中发现使用者的很多宏包的版本很低，这不是一个良好的使用习惯，建议大家都使用最新版的套装并更新所有包，LaTeX也是有bug的，尤其是众多的宏包，所以不要一直使用老旧版本。

在此之前有很多人已经修改了学校模板使之能够正常编译，但是绝大部分人都只是抱着能编译即可的态度去修改，没有认真阅读模板的代码，没有理解模板的逻辑，对最新的一些宏包使用方式不够了解，仅停留在了会搜索答案并修改模板使之可以编译，但不懂为何的阶段。本闲人工作学习之余花费了一些时间阅读源码和宏包手册，尽可能做到每次修改都有所依据，知其所以然。

综上所述，在发现学校系统的原始模板问题多多，故整理个人的一点点工作并公开，为更多的一般LaTeX用户提供较为容易使用的模板。

# 注意事项

本人还未到写学位论文的阶段，因此没有十足的该模板日常使用经验，如果大家在使用过程中有任何问题或者建议，可以提[Issue](https://github.com/note286/xdupgthesis/issues)反馈。此外，关于环境配置请阅读[install-latex-guide-zh-cn.pdf](http://mirrors.ctan.org/info/install-latex-guide-zh-cn/install-latex-guide-zh-cn.pdf)，不熟悉语法的请阅读[lshort-zh-cn.pdf](http://mirrors.ctan.org/info/lshort/chinese/lshort-zh-cn.pdf)。

# 使用/示例

下载或克隆该仓库，可直接修改`tex`、`bib`、`cfg`等文件来进行论文的攥写。

## 安装

强烈建议安装最新版[TeX Live](https://www.tug.org/texlive/)，如没有本地阅读文档的需求，可以不勾选安装文档的选项，这样会减少大约一半的磁盘占用空间，环境配置请阅读[install-latex-guide-zh-cn.pdf](http://mirrors.ctan.org/info/install-latex-guide-zh-cn/install-latex-guide-zh-cn.pdf)，并更新所有包至最新版，使用管理员权限运行[cmd](https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/cmd)：

### 配置镜像源

```shell
tlmgr repository set https://mirrors.ustc.edu.cn/CTAN/systems/texlive/tlnet/
```

### 更新包管理器和所有包

```shell
tlmgr update --self && tlmgr update --all
```

如果遇到更新失败，重新执行一遍。

## 编译

仅介绍如何使用命令编译，可选择使用`Latexmk`来快速编译或者常规的四次编译。如果喜欢使用IDE，请自行选择对应IDE中的`XeLaTeX`的编译方式，参考文献使用`BibTeX`编译。如使用命令行或者IDE无内置PDF查看器，Windows平台上推荐使用[Sumatra PDF](https://www.sumatrapdfreader.org/free-pdf-reader)，适当配置可支持正向跳转和反向跳转，在次不赘述。

### latexmk

```shell
latexmk -xelatex -synctex=1 templet
```

### 四次编译

```shell
xelatex -synctex=1 templet
bibtex templet
xelatex -synctex=1 templet
xelatex -synctex=1 templet
```

## 参考文献引用

由于`\cite{}`已被重定义，所以直接使用即可符合学校的要求：

```latex
测试引用\cite{tang:press,wanga:medicine,CRAW:future}是否正常。
```

此外，模板中自带的bib文件中的条目写的不是很规范，不建议参考，可以使用[dblp](https://dblp.org/)生成的bib条目，[百度学术](https://xueshu.baidu.com/)和[Google Scholar](https://scholar.google.com.hk/)导出的bib文件不是很规范，经常有很大问题，感兴趣的可以去[BibTeX format explained](https://www.bibtex.com/g/bibtex-format/)了解bib文件的合法格式，遇到[dblp](https://dblp.org/)没有的条目，可以手动整理。

## 中英文间空白

[xeCJK](http://mirrors.ctan.org/macros/xetex/latex/xecjk/xeCJK.pdf)宏包文档第1节第4点指出：

> 自动调整中英文间空白。

因此，使用`xelatex`来编译中文文档，用户无需主动在中英文之间添加空格或者`~`，`XeLaTeX`会自动处理中英文间空白。

为了避免用户困惑，移除了原模板中为了适应在落后引擎实现中英文间空白而添加的`~`。

# 模板来源

在[西安电子科技大学申请硕士学位相关资料(学术学位)-研究生院/研究生工作部-西安电子科技大学](https://gr.xidian.edu.cn/info/1047/5087.htm)中[关于发布研究生学位论文模板（2015年修订版）的通知](https://gr.xidian.edu.cn/images/16/07/15/3lz5xyf6nj/16CE9809876C6A463CF45A57AFBD1968.doc)里，有如下描述：

> 三、新增Latex版论文模板，提高了模板整体的通用性，增加了使用者的可选择性。
>
> 本模板从申请2015年9月毕业和授位的研究生开始执行，请各学院和导师督促研究生严格按照要求撰写论文。模板的下载路径如下：
>
> 博士学位论文模板：西安电子科技大学研究生院网站主页—学位授予—文件资料下载—西安电子科技大学申请博士学位相关资料。
>
> 博士研究生毕业论文模板：西安电子科技大学研究生院网站主页—学位授予—文件资料下载—西安电子科技大学申请博士研究生毕业论文答辩相关资料。
>
> 硕士学位论文模板：西安电子科技大学研究生院网站主页—学位授予—文件资料下载—西安电子科技大学申请硕士学位相关资料/西安电子科技大学申请全日制硕士专业学位相关资料/西安电子科技大学申请单证工程硕士专业学位相关资料/西安电子科技大学申请同等学力硕士学位相关资料。

在其下方有附件[西安电子科技大学研究生学位论文模板latex宏包-2019.03修订.rar](https://gr.xidian.edu.cn/system/_content/download.jsp?urltype=news.DownloadAttachUrl&owner=1281831001&wbfileid=2792304)，该压缩包SHA-1值为：

```
4B586B268668B9EBA984B1AEE85403DBC1B5C241
```

本仓库内所有文件均来自于西安电子科技大学官方提供的模板压缩包，本着尽可能少修改的原则修复错误和警告。

# 编码转换

在[CTEX宏集手册](http://mirror.ctan.org/language/chinese/ctex/ctex.pdf)中4.2章节指出：

> 使用XeLaTeX、LuaLaTeX或upLaTeX编译时，CTEX宏集强制使用UTF-8编码。

由于学校官方模板为GBK编码，因此将所有文件全部转换为UTF-8编码。

# 修复错误

## 错误一

```latex
! Package hyperref Error: Wrong DVI mode driver option `dvipdfm',
(hyperref)                because XeTeX is running.

See the hyperref package documentation for explanation.
Type  H <return>  for immediate help.
 ...

l.4073 \ProcessKeyvalOptions{Hyp}
```

从报错信息中可以看出，由于使用的是`XeTeX`，因此不应错误的使用`dvipdfm`参数，将该参数移除即可。

## 错误二

```latex
! Undefined control sequence.
\XDU@value@thesis@title ->西安电子科技大学研究生学位论文\par撰写要求
                                                  （2015年修订版）
l.13 \XDUfrontmatter
```

由于`\par`命令后紧跟着字符，导致引擎无法准确识别出该命令，因此可以在`\par`后增加一个空格，或使用`{\par}`替换`\par`，再或者使用`\\`替换`\par`均可修复。

## 错误三

```latex
! Undefined control sequence.
\XDU@@underline [#1]#2->\CTEXunderline
                                       {\hbox to #1{\hfill {#2}\hfill }}
l.13 \XDUfrontmatter
```

在[CTEX宏集手册](http://mirror.ctan.org/language/chinese/ctex/ctex.pdf)中11.2章节指出：

> 在调用fntef宏包选项的同时，旧版本CTEX宏包由于需要支持CCT系统，会将以\CJK开头的\CJKunderline等宏换名为以\CTEX开头的\CTEXunderline等宏。此功能在新版本的CTEX宏集中已失去意义。

因此，将`XDUthesis.cls`中两处`\CTEXunderline`替换为`\underline`。

# 字体修正

## 中文字体

[CTEX宏集手册](http://mirror.ctan.org/language/chinese/ctex/ctex.pdf)中4.3章节指出：

> 如果没有指定fontset的值，CTEX宏集将自动检测用户使用的操作系统，配置相应的字体。

从模板中文档类文件中可以看出仅使用了宋体和黑体，因此后续只考虑宋体和黑体的配置。学校官方的word模板中使用的是Windows自带的中易字体，包括[中易宋体](https://zh.wikipedia.org/wiki/%E4%B8%AD%E6%98%93%E5%AE%8B%E4%BD%93)和[中易黑体](https://zh.wikipedia.org/wiki/%E4%B8%AD%E6%98%93%E9%BB%91%E4%BD%93)，为了保证一致性，统一为`ctexbook`增加`fontset=windows`参数，使之可以调用中易字体，但是由于[中易宋体](https://zh.wikipedia.org/wiki/%E4%B8%AD%E6%98%93%E5%AE%8B%E4%BD%93)和[中易黑体](https://zh.wikipedia.org/wiki/%E4%B8%AD%E6%98%93%E9%BB%91%E4%BD%93)无对应的粗体字体，而在模板中出现了20次粗体命令的调用，具体为：

- 宋体
  - 各章节一级标题
  - 首页论文标题
  - 首页底部作者姓名、指导教师姓名、职称和申请学位类别具体内容
  - 第3页顶部`学校代码`、`分类号`、`学号`和`密级`等字样及其具体内容
  - 第3页中部`硕士学位论文`字样
  - 第3页论文标题
  - 第3页底部`作者姓名：`、`一级学科：`、`二级学科（研究方向）：`、`学位类别：`、`指导教师姓名、职称：`、`学院：`和`提交日期：`字样
  - 第5页英文论文标题

- 黑体
  - 首页底部`作者姓名`、`指导教师姓名、职称`和`申请学位类别`字样
  - 第3页中部`西安电子科技大学`字样

因此需要使用伪粗体来实现粗体效果，但是[CTEX宏集手册](http://mirror.ctan.org/language/chinese/ctex/ctex.pdf)中版本历史v2.4.4指出：

> General: 不再默认设置xeCJK的伪粗体。

所以需要手动开启伪粗体，在清华大学学位论文模板[thuthesis.dtx](http://mirrors.ctan.org/macros/latex/contrib/thuthesis/thuthesis.dtx)中可以找到如下参数：

> \xeCJKsetup{EmboldenFactor=3}

我们参考该值设置伪粗体的粗细程度为3，即在cls文件中添加

```latex
\PassOptionsToPackage{AutoFakeBold=3}{xeCJK}
```

至此，可以使用中易字体来显示中文，同时利用伪粗体来实现粗体效果。

## 英文字体

从模板示例中可以看出所有英文字体均要求为Times New Roman，Times New Roman是有粗体字体的，上面设置的开启伪粗体的全局命令不会影响到Times New Roman字体，在cls文件中使用如下命令可以配置默认英文字体为Times New Roman：

```latex
\BeforeBeginEnvironment{document}{\setmainfont{Times New Roman}}
```

# 修复警告

## cs4size

```latex
Package ctex Warning: Option `cs4size' is deprecated.
(ctex)                Option `zihao=-4' is set.
```

`XDUthesis.cls`中`cs4size`替换为`zihao=-4`。

## fancyhdr

```latex
Package ctex Warning: Option `fancyhdr' is deprecated.
(ctex)                `fancyhdr' package is loaded.
```

`XDUthesis.cls`中`ctexbook`移除选项`fancyhdr`，改为

```latex
\RequirePackage{fancyhdr}
```

## fntef

```latex
Package ctex Warning: Option `fntef' is deprecated.
(ctex)                `xeCJKfntef' package is loaded.
```

```latex
LaTeX Warning: Unused global option(s):
    [xeCJKfntef].
```

`XDUthesis.cls`中移除`fntef`参数。

## caption2

```latex
Package caption2 Warning: ****************************************************
(caption2)                THIS PACKAGE IS OBSOLETE:
(caption2)                This package attempts to provide an `caption2'
(caption2)                package v2.0/2.1 author environment so that OLD
(caption2)                documents can be successfully processed. It should
(caption2)                NOT be used for NEW documents! New documents should
(caption2)                use the regular `caption' package v3.x instead.
(caption2)                ****************************************************
```

`caption2`包已经过时，使用`caption`包来替换。

`XDUthesis.cls`中移除如下设置：

```latex
\RequirePackage{caption2}
```

```latex
\renewcommand{\captionlabeldelim}{\ ~}%去冒号
```

`XDUthesis.cls`中改为使用如下宏包：

```latex
\RequirePackage[labelsep=quad]{caption}
```

## hyperref

```latex
Package hyperref Warning: Option `a4paper' is no longer used.
```

`XDUthesis.cls`中移除如下代码

```latex
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
```

```latex
%% hyperref
\ifpdf
  \RequirePackage[pdftex]{hyperref}
\else
  \ifXDU@Option@dvipdfm
    \RequirePackage{hyperref}
  \else
    \RequirePackage{hyperref}
  \fi
\fi
```

改为使用如下宏包

```latex
\RequirePackage[bookmarksnumbered]{hyperref}
```

即关于`hyperref`宏包的所有设置仅保留上述语句。

## \CTEXsetup

```latex
Package ctex Warning: Command `\CTEXsetup' is deprecated.
```

将`XDUthesis.cls`中

```latex
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
```

```latex
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
```

```latex
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
```

```latex
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
```

分别改为

```latex
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
```

```latex
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
```

```latex
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
```

```latex
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
```

## \CTEXoptions

```latex
Package ctex Warning: Command `\CTEXoptions' is deprecated.
```

将`XDUthesis.cls`中

```latex
\CTEXoptions[figurename={\zihao{5}\XDU@label@figure@cap}]
\CTEXoptions[tablename={\zihao{5}\XDU@label@table@cap}]
\CTEXoptions[listfigurename={\XDU@label@listoffigures}]
\CTEXoptions[listtablename={\XDU@label@listoftables}]
\CTEXoptions[contentsname={\XDU@label@content}]
\CTEXoptions[bibname={\XDU@label@ref@title}]
```

分别改为

```latex
\ctexset{figurename={\zihao{5}\XDU@label@figure@cap}}
\ctexset{tablename={\zihao{5}\XDU@label@table@cap}}
\ctexset{listfigurename={\XDU@label@listoffigures}}
\ctexset{listtablename={\XDU@label@listoftables}}
\ctexset{contentsname={\XDU@label@content}}
\ctexset{bibname={\XDU@label@ref@title}}
```

## \CTEXnoindent

```latex
Package ctex Warning: Command `\CTEXnoindent' is deprecated.
(ctex)                \parindent is set to 0pt.
```

将`XDUthesis.cls`中`\CTEXnoindent`全部替换为`\parindent=0pt`。

## \CTEXindent

```latex
Package ctex Warning: Command `\CTEXindent' is deprecated.
(ctex)                \parindent is set to 2\ccwd .
```

将`XDUthesis.cls`中`\CTEXindent`全部替换为`\parindent=2\ccwd`。

## Font size

```latex
LaTeX Font Warning: Font shape `OMX/cmex/m/n' in size <10.53937> not available
(Font)              size <10.95> substituted on input line 14.
```

在`XDUthesis.cls`中增加如下宏包来实现任意字号

```latex
\RequirePackage{lmodern}
```

# 增加功能

## 参考文献条目样式

国家标准《信息与文献 参考文献着录规则》（标准号[GB/T 7714-2015](http://std.samr.gov.cn/gb/search/gbDetailed?id=71F772D8055ED3A7E05397BE0A0AB82A)）已于2015年12月1日实施，而学校原模板中还在使用已废止的国家标准《文后参考文献着录规则》（标准号[GB/T 7714-2005](http://std.samr.gov.cn/gb/search/gbDetailed?id=71F772D78562D3A7E05397BE0A0AB82A)），故本项目将参考文献样式修改为现行的国家标准。

将`XDUthesis.cls`中`gbt7714-2005`替换为`gbt7714-numerical`即可，`gbt7714-numerical.bst`样式文件在发行版中自带了，最后删除主目录下的`gbt7714-2005.bst`文件。

## 参考文献引用样式

模板示例中有如下表述：

> 学位论文的撰写要本着严谨求实的科学态度，凡有引用他人成果之处，引用处右上角用方括号标注阿拉伯数字编排的序号（必须与参考文献一致），同时所有引用的文献必须用全称，不能缩写，并按论文中所引用的顺序列于文末。

从中可以看出学校要求参考文献引用处右上角用方括号标注阿拉伯数字编排的序号，因此重定义了`\cite{}`命令，用户直接使用`\cite{}`命令即可产生符合要求的参考文献引用样式。

此外，移除了主文件中没有必要的`refcompress`参数和cls样式文件中对应的代码，改为默认参考文献连续编号压缩。同时移除了主文件中的`\nocite{*}`，即没有引用的参考文献不在参考文献列表中显示。

## URL自动换行

增加了`xurl`宏包的自动调用，实现任意字符处可换行，避免出现URL上一行过于松散的情况。

[xurl宏包](http://mirrors.ctan.org/macros/latex/contrib/xurl/doc/xurl.pdf)文档有如下表述：

> Package xurl loads package url by default and defines possible url breaks for all alphanumerical characters and = / . : * - ~ ' "

# 作者

- [@note286](https://github.com/note286)

