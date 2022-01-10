<p align="center"><a href="https://github.com/note286/xdupgthesis"><img src="logo.png"></a></p>
<p align="center">
<a href="https://github.com/note286/xdupgthesis/blob/main/LICENSE"><img src="https://img.shields.io/github/license/note286/xdupgthesis"></a>
<a href="https://github.com/note286/xdupgthesis"><img src="https://img.shields.io/github/stars/note286/xdupgthesis"></a>
<a href="https://github.com/note286/xdupgthesis/issues?q=is%3Aopen+is%3Aissue"><img src="https://img.shields.io/github/issues/note286/xdupgthesis"></a>
<a href="https://github.com/note286/xdupgthesis/issues?q=is%3Aissue+is%3Aclosed"><img src="https://img.shields.io/github/issues-closed/note286/xdupgthesis"></a>
<a href="https://github.com/note286/xdupgthesis/commits/main"><img src="https://img.shields.io/github/commit-activity/m/note286/xdupgthesis"></a>
<a href="https://github.com/note286/xdupgthesis/commits/main"><img src="https://img.shields.io/github/last-commit/note286/xdupgthesis"></a>
<a href="https://github.com/note286/xdupgthesis/tags"><img src="https://img.shields.io/github/v/tag/note286/xdupgthesis"></a>
</p>

# 目录

- [项目名称](#项目名称)
- [注意事项](#注意事项)
- [项目起源](#项目起源)
- [使用/示例](#使用示例)
  - [卸载与安装](#卸载与安装)
    - [配置镜像源](#配置镜像源)
    - [更新包管理器和所有包](#更新包管理器和所有包)
  - [字体安装](#字体安装)
    - [Windows](#windows)
    - [GNU/Linux](#gnulinux)
    - [macOS](#macos)
    - [Overleaf](#overleaf)
    - [TeXPage](#texpage)
  - [下载与编辑](#下载与编辑)
  - [编译](#编译)
    - [命令编译](#命令编译)
      - [latexmk编译](#latexmk编译)
      - [四次编译](#四次编译)
    - [文本编辑器编译](#文本编辑器编译)
    - [WinEdt编译](#winedt编译)
    - [TeXworks编译](#texworks编译)
    - [TeXstudio编译](#texstudio编译)
    - [Texmaker编译](#texmaker编译)
    - [Overleaf编译](#overleaf编译)
    - [TeXPage编译](#texpage编译)
  - [文档类可选参数](#文档类可选参数)
  - [内置宏包](#内置宏包)
  - [数学字体切换开关](#数学字体切换开关)
  - [数学符号](#数学符号)
  - [参考文献引用](#参考文献引用)
  - [字体形状与字体系列](#字体形状与字体系列)
  - [中英文间空白](#中英文间空白)
  - [标点符号](#标点符号)
  - [交叉引用](#交叉引用)
  - [图片](#图片)
  - [表格](#表格)
  - [算法](#算法)
  - [浮动体位置](#浮动体位置)
  - [论文标题](#论文标题)
  - [插图/表格索引中图表序号与图表标题间距](#插图表格索引中图表序号与图表标题间距)
  - [插图/表格索引前缀开关](#插图表格索引前缀开关)
  - [插图/表格索引垂直间距开关](#插图表格索引垂直间距开关)
  - [断页机制切换开关](#断页机制切换开关)
  - [符号对照表](#符号对照表)
  - [缩略语对照表](#缩略语对照表)
  - [附录](#附录)
  - [个人及论文信息填写](#个人及论文信息填写)
  - [论文相似性检测](#论文相似性检测)
  - [论文抽查评估](#论文抽查评估)
  - [草稿模式](#草稿模式)
  - [显示边框](#显示边框)
  - [签名图像](#签名图像)
  - [字数统计](#字数统计)
  - [数据同步](#数据同步)
- [模板来源](#模板来源)
- [编码转换](#编码转换)
- [修复错误](#修复错误)
  - [错误一](#错误一)
  - [错误二](#错误二)
  - [错误三](#错误三)
- [字体修正](#字体修正)
  - [中文字体](#中文字体)
  - [英文字体](#英文字体)
- [修复警告](#修复警告)
  - [cs4size](#cs4size)
  - [fancyhdr](#fancyhdr)
  - [fntef](#fntef)
  - [caption2](#caption2)
  - [hyperref](#hyperref)
  - [\CTEXsetup](#ctexsetup)
  - [\CTEXoptions](#ctexoptions)
  - [\CTEXnoindent](#ctexnoindent)
  - [\CTEXindent](#ctexindent)
  - [Font size](#font-size)
- [增加功能](#增加功能)
  - [参考文献条目样式](#参考文献条目样式)
  - [参考文献引用样式](#参考文献引用样式)
  - [URL自动换行](#url自动换行)
  - [教育背景时间对齐](#教育背景时间对齐)
  - [交叉引用名称](#交叉引用名称)
  - [PDF元数据](#pdf元数据)
  - [各级标题样式](#各级标题样式)
  - [子图及图片标题](#子图及图片标题)
  - [显示图表索引前缀](#显示图表索引前缀)
  - [图表索引与目录中引导符一致](#图表索引与目录中引导符一致)
  - [增强符号对照表和缩略语对照表](#增强符号对照表和缩略语对照表)
  - [增加专业学位硕士学位论文封面与中英文题名页](#增加专业学位硕士学位论文封面与中英文题名页)
- [版本记录](#版本记录)
- [免责声明](#免责声明)
- [作者](#作者)

# 项目名称

xdupgthesis-Xidian University Postgraduate Thesis

西安电子科技大学研究生学位论文XeLaTeX模板

# 注意事项

在使用过程中有任何问题或者建议，可以提[Issue](https://github.com/note286/xdupgthesis/issues)反馈，注意，不同的问题开多个issue，不要堆在一个issue里。

如果从来没接触过LaTeX又不肯花时间去学习，或者马上要交论文没有时间学习，不建议使用LaTeX，虽然Microsoft Word排版也不简单，但还是建议使用Microsoft Word。目前学校完全支持LaTeX编译出来的PDF文件进行查重和最终的提交，但是如果你的导师要求必须使用Microsoft Word才帮你修改论文的话，那么建议使用Microsoft Word来配合导师。

关于环境配置请阅读[install-latex-guide-zh-cn.pdf](https://mirrors.ustc.edu.cn/CTAN/info/install-latex-guide-zh-cn/install-latex-guide-zh-cn.pdf)，想要入门LaTeX或者对LaTeX语法一知半解的请阅读[lshort-zh-cn.pdf](https://mirrors.ustc.edu.cn/CTAN/info/lshort/chinese/lshort-zh-cn.pdf)，想要查询数学符号的可以在[symbols-a4.pdf](https://mirrors.ustc.edu.cn/CTAN/info/symbols/comprehensive/symbols-a4.pdf)中搜索。本项目文档都很详细，请认真阅读README。

**由于模板升级频繁，在开始使用和提问前，请确保您已经认真完整地阅读了README和示例代码。**

# 项目起源

本节讲述本项目起源，用户不感兴趣可以跳过，直接使用本项目模板即可。

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

# 使用/示例

本节介绍了一些使用本项目模板的方法，建议用户根据自身情况阅读。

本模板内置的一些示例在附录中，可供参考。正文部分的源码不建议参考，其内容为原始模板，部分使用方式不是很规范。

## 卸载与安装

Windows和GNU/Linux平台使用[TeX Live](https://www.tug.org/texlive/)，macOS平台使用[MacTeX](https://www.tug.org/mactex/)，跨版本升级均需要卸载旧版。

Windows平台卸载方法为管理员身份直接运行`C:\texlive\2021\tlpkg\installer\uninst.bat`，不同版本和安装位置请按需修改目录，更多介绍请参考[install-latex-guide-zh-cn.pdf](https://mirrors.ustc.edu.cn/CTAN/info/install-latex-guide-zh-cn/install-latex-guide-zh-cn.pdf)第1.2节，GNU/Linux平台卸载方法请参考[install-latex-guide-zh-cn.pdf](https://mirrors.ustc.edu.cn/CTAN/info/install-latex-guide-zh-cn/install-latex-guide-zh-cn.pdf)第2.2节，macOS上卸载方法请参考[Uninstalling MacTeX](https://www.tug.org/mactex/uninstalling.html)。

本项目模板仅在TeX Live/MacTeX 2021通过测试，其他旧版本并未实际进行测试。建议安装最新版LaTeX发行版套装并更新所有包，如果已安装TeX Live或MacTeX并且能够编译，用户可以选择不升级套装，不更新包。

目前已知旧版本套装和旧包存在的问题：

- 最新版LaTeX发行版套装不更新所有包可能会出现参考文献样式问题，详见[参考文献格式问题 · Issue #13](https://github.com/note286/xdupgthesis/issues/13)。
- TeX Live/MacTeX 2018及以下版本套装会影响论文相似性检测，具体原因详见[中文字体](#中文字体)。
- TeX Live/MacTeX 2018及以下版本套装会导致插图/表格索引前缀重复，具体原因目前未知。

校内睿思下载地址：[TeX Live 2021](http://rs.xidian.edu.cn/forum.php?mod=viewthread&tid=1094234)和[MacTeX 2021](http://rs.xidian.edu.cn/forum.php?mod=viewthread&tid=1094235)，最新版中科大源校外下载地址：[TeX Live](https://mirrors.ustc.edu.cn/CTAN/systems/texlive/Images/texlive.iso)和[MacTeX](https://mirrors.ustc.edu.cn/CTAN/systems/mac/mactex/MacTeX.pkg)。

后续如无特殊情况，仅以Windows举例，其他操作系统上类似。右键选择下载好的`.iso`文件，选择打开方式->Windows资源管理器，然后右键以管理员身份运行`install-tl-windows.bat`，保持默认配置即可，如没有本地阅读文档的需求，安装时可以不勾选安装文档的选项，这样会减少大约一半的磁盘占用空间，具体来说，在TeX Live安装窗口中点击左下角Advanced，取消勾选安装字体/宏包文档目录树和安装字体/宏包源码目录树即可不安装文档和源码。更多LaTeX环境安装与配置请阅读[install-latex-guide-zh-cn.pdf](https://mirrors.ustc.edu.cn/CTAN/info/install-latex-guide-zh-cn/install-latex-guide-zh-cn.pdf)，建议更新所有包至最新版，Windows平台上使用管理员身份运行[cmd](https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/cmd)。

### 配置镜像源

管理员权限运行

```shell
tlmgr repository set https://mirrors.ustc.edu.cn/CTAN/systems/texlive/tlnet/
```

### 更新包管理器和所有包

管理员权限运行

```shell
tlmgr update --all --self
```

如果遇到更新失败，重新执行一遍。

## 字体安装

考虑到可能存在版权问题，故不提供字体文件或字体下载链接。

对于编译得到pdf文件，可以通过运行

```shell
pdffonts xdupgthesis.pdf
```

来查看字体信息，包括字体名称和字体嵌入等情况。

### Windows

已安装Microsoft Office的Windows平台无需手动配置字体，所需字体Microsoft Office和Windows操作系统已内置。如果没有安装Microsoft Office，会缺失Cambria Math字体，可以从已安装Microsoft Office的Windows设备`C:\Windows\Fonts`处拷贝出`cambria.ttc`字体，右键该字体文件，选择为所有用户安装即可。

### GNU/Linux

由于默认情况下中易宋体的意大利形状对应的是中易楷体，因此中文字体除中易宋体和中易黑体外，还需要中易楷体。

此外还需要数学字体Cambria Math。

用户可以从Windows操作系统字体库中拷贝出`simhei.ttf`、`simkai.ttf`、`simsun.ttc`、`times.ttf`、`timesbd.ttf`、`timesbi.ttf`、`timesi.ttf`和`cambria.ttc`共8个字体文件至GNU/Linux，其中三个中文字体文件和Cambria Math数学字体文件位于`C:\Windows\Fonts`处，Times New Roman字体的四个字体文件位于`C:\Windows\Fonts\Times New Roman`处。用户在查找字体时，可以根据Windows中英文系统内字体名称来查找，找到后复制该字体，粘贴至某个空白文件夹即可得到对应的字体文件，然后将这8个字体文件传输至GNU/Linux。

|    字体名称     | 字体文件名  |  Windows英文系统内字体名称  | Windows中文系统内字体名称 |
| :-------------: | :---------: | :-------------------------: | :-----------------------: |
|    中易黑体     | simhei.ttf  |       SimHei Regular        |         黑体 常规         |
|    中易楷体     | simkai.ttf  |        KaiTi Regular        |         楷体 常规         |
|    中易宋体     | simsun.ttc  |       SimSun Regular        |         宋体 常规         |
| Times New Roman |  times.ttf  |   Times New Roman Regular   |   Times New Roman 常规    |
| Times New Roman | timesbd.ttf |    Times New Roman Bold     |   Times New Roman 粗体    |
| Times New Roman | timesbi.ttf | Times New Roman Bold Italic |  Times New Roman 粗斜体   |
| Times New Roman | timesi.ttf  |   Times New Roman Italic    |   Times New Roman 斜体    |
|  Cambria Math   | cambria.ttc |    Cambria Math Regular     |     Cambria Math 常规     |

使用如下命令在GNU/Linux安装字体：

```shell
sudo cp simhei.ttf simkai.ttf simsun.ttc times.ttf timesbd.ttf timesbi.ttf timesi.ttf cambria.ttc /usr/share/fonts
```

然后就可以根据[编译](#编译)里的方法去编译了。

### macOS

参考[GNU/Linux](#gnulinux)从Windows平台提取字体文件，然后在macOS上双击安装字体文件即可。注意，虽然macOS内置了Times New Roman字体，但是该内置字体版本过于老旧，有缺字的现象，建议将8个字体文件全部安装。

然后就可以根据[编译](#编译)里的方法去编译了。

### Overleaf

在[Overleaf in Chinese](https://cn.overleaf.com/)平台使用时，由于Overleaf是安装在GNU/Linux上的最新版的TeX Live，用户无需考虑LaTeX套装版本问题，仅需要安装字体即可，用户首先将本仓库[下载](https://github.com/note286/xdupgthesis/archive/refs/heads/main.zip)，再根据[GNU/Linux](#gnulinux)中的方法得到8个字体文件。

在Overleaf左上角点击创建新项目，选择上传项目，将压缩包上传至Overleaf，会自动进入该论文模板项目。点击左上角新建目录按钮，新建一个名为`fonts`的文件夹，选中`fonts`文件夹，点击左上角上传按钮将所有的字体文件上传。最后根据[Overleaf编译](#overleaf编译)配置如何在线编译。

### TeXPage

在[TeXPage](https://www.texpage.com/)平台使用时，由于TeXPage是安装在GNU/Linux上的最新版的TeX Live，用户无需考虑LaTeX套装版本问题，仅需要安装字体即可，用户首先将本仓库[下载](https://github.com/note286/xdupgthesis/archive/refs/heads/main.zip)，再根据[GNU/Linux](#gnulinux)中的方法得到字体文件。

在TeXPage[个人主页](https://www.texpage.com/console)左上角点击创建，选择上传项目，将压缩包上传至TeXPage，进入该论文模板项目。点击左上角新建文件夹按钮，新建一个名为`fonts`的文件夹，选中`fonts`文件夹，点击左上角上传文件按钮将所有的字体文件上传。最后根据[TeXPage编译](#texpage编译)配置如何在线编译。

## 下载与编辑

请点击[下载](https://github.com/note286/xdupgthesis/archive/refs/heads/main.zip)压缩包或[克隆](x-github-client://openRepo/https://github.com/note286/xdupgthesis)该仓库，用户可直接修改`tex`、`bib`和`cfg`等类型文件来进行论文的撰写。具体来说，用户通过编辑`xdupgthesis.tex`、`xdupgthesis.bib`和`chapters`文件夹下文件来撰写论文内容，通过修改`xdupgthesis.cfg`内容来更改论文信息或者个人信息。此外，`xdupgthesis.cls`和`xdupgthesis.def`文件请不要修改。

其中，Overleaf用户注意，由于Overleaf的[限制](https://www.overleaf.com/learn/how-to/Uploading_a_project)：

> While the Overleaf editor can edit any plain text file, only uploads with the most common LaTeX file extensions (.tex, .bib, .cls, .sty, ...) will be editable on the site.

因此主目录下的`xdupgthesis.cfg`文件无法直接在线编辑，只能通过下载再上传的方式进行编辑，不过由于该文件一般仅需要填写一次，也可以接受。

另外，在[CTEX宏集手册](https://mirrors.ustc.edu.cn/CTAN/language/chinese/ctex/ctex.pdf)中5.3章节指出：

> 根据空格后面的情况决定是否保留：如果空格后面是汉字，则忽略该空格，否则保留。

因此，用户在写作过程中，建议每行汉字控制在40个字符，英文控制在80个字符，即刚好填充一行的字符数。用户可以随意的换行，在LaTeX中，换行意味着空格，空格会根据上面的情况选择保留还是忽略，如果空格后面是汉字，则忽略该空格，用户完全不需要担心会产生多余的空格。这样的好处是在从文档到源码的反向同步中可以非常精准地定位。

## 编译

本项目目前仅在Windows和GNU/Linux平台上的TeX Live 2021和macOS平台上的MacTeX 2021进行了测试，均更新所有包至最新版，并参考[字体安装](#字体安装)安装了缺失字体。命令编译时切换到`xdupgthesis.tex`所在目录执行命令即可。IDE编译选择对应IDE中的`XeLaTeX`的编译方式，参考文献使用`BibTeX`编译。关于PDF查看器，Windows平台上推荐使用[Sumatra PDF Viewer](https://www.sumatrapdfreader.org/free-pdf-reader)，macOS平台上推荐[Skim](https://skim-app.sourceforge.io/)，适当配置可支持正向同步和反向同步。

### 命令编译

介绍如何使用命令编译，可选择使用`latexmk`来快速编译或者常规的四次编译。

#### latexmk编译

编译

```shell
latexmk
```

清理辅助文件

```shell
latexmk -c
```

#### 四次编译

编译

```shell
xelatex -synctex=1 xdupgthesis
bibtex xdupgthesis
xelatex -synctex=1 xdupgthesis
xelatex -synctex=1 xdupgthesis
```

清理辅助文件

```shell
latexmk -c
```

### 文本编辑器编译

任何一款[文本编辑器](https://zh.wikipedia.org/wiki/%E6%96%87%E6%9C%AC%E7%BC%96%E8%BE%91%E5%99%A8)均可以编辑`.tex`文件，包括但不限于[Sublime Text](https://www.sublimetext.com/)和[Visual Studio Code](https://code.visualstudio.com/)等。一些文本编辑器支持安装扩展，例如Sublime Text可以安装[LaTeXTools](https://packagecontrol.io/packages/LaTeXTools)、Visual Studio Code可以安装[LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)来辅助进行`.tex`文件的编辑，还提供了一些常用的编译配置。可以搭配Sumatra PDF Viewer或Skim实现反向同步，正向同步一般需要文本编辑器或其扩展支持。

一些文本编辑器不支持自定义编译功能或者安装扩展，依然可以使用文本编辑器来编辑`.tex`文件，使用命令来进行编译。

### WinEdt编译

下载[WinEdt](https://www.winedt.com/download.html)安装包并安装，支持Windows平台。安装后可以查看[Quick Guide](http://www.winedt.com/download.html#Quick_Guide)获取更多关于WinEdt的使用帮助。

打开WinEdt后，点击File->Open打开`xdupgthesis.tex`文件，点击Project->Build Tree，在左侧Tree栏中`xdupgthesis.tex`文件上左键单击，再点击Project->Set Main File，这样设置后可以使得在任意子文件内均可以直接点击编译而无需切换至主文件再编译。点击Option->Execution Modes，在弹出的面板左侧选择TeXify，在面板左下角点击Browse for executable，依次找到`C:\texlive\2021\bin\win32\latexmk.exe`文件并点击打开，如果安装TeX Live至非默认目录，依情况修改；将左下角的Switches中对应值清空，最后点击面板上的OK。

在Toolbar中PDF Preview左侧的按钮下拉菜单中可以切换编译引擎。完全编译选择TeXify，可以自动处理交叉引用和参考文献引用，编译时间较长；不考虑交叉引用和参考文献引用时，快速编译选择XeLaTeX，编译时间较短，需要参考文献引用时再点击TeX->BibTeX编译参考文献，接着执行两次XeLaTeX编译可以生成参考文献列表和参考文献引用。

点击Tools->Erase Output Files或者Toolbar中的Erase Output Files按钮，在弹出的面板中再点击Delete Now可以清理辅助文件，常用于某次报错后清理错误的辅助文件，避免二次报错。

可以参考[QuickGuide.pdf](http://www.winedt.com/doc/QuickGuide.pdf)中第2.3节配置WinEdt默认PDF查看器为Sumatra PDF Viewer，即点击Option->Execution Modes，在弹出的面板选择PDF Viewer标签，将PDF Viewer Executable改为SumatraPDF.exe，Sumatra PDF Viewer默认安装在`%LOCALAPPDATA%\SumatraPDF\`处，这样就可以使用Sumatra PDF Viewer来查看PDF文件。Sumatra PDF Viewer的反向同步一般WinEdt会自动配置，如果需要手动配置，在Sumatra PDF Viewer左上角点击三道杠->设置->选项，在最后设置反向搜索命令行中填写

```
"C:\Program Files\WinEdt Team\WinEdt 10\WinEdt.exe" "[Open(|%f|);SelPar(%l,8);]"
```

并点击确定即可。

注意，由于WinEdt添加新的编译配置较为复杂，本方法将TeXify内的编译引擎由LaTeX改为latexmk，并使用了主目录下的`latexmkrc`编译配置。

### TeXworks编译

下载[TeXworks](https://tug.org/texworks/)安装包并安装，支持Windows，GNU/Linux和macOS平台。安装后可以查看[A short manual for TeXworks](https://github.com/TeXworks/manual/releases)获取更多关于TeXworks的使用帮助。

打开TeXworks后，点击编辑->首选项->排版->处理工具，点击右下角蓝色加号，在弹出的面板中名称处填写latexmk，程序处点击右侧浏览选择`C:\texlive\2021\bin\win32\latexmk.exe`文件并点击打开，如果安装TeX Live至非默认目录，依情况修改，最后点击面板上的OK。选择新建的latexmk，点击右侧的蓝色上箭头移动至顶部，再将内置的XeLaTeX和BibTeX移动至顶部，使得latexmk、XeLaTeX和BibTeX位于处理工具的顶部，方便后续切换引擎。再选择下方的默认，可以将latexmk或者XeLaTeX设置为默认，最后点击OK。在`chapters`文件夹内所有`.tex`文件头部添加一行，内容为`% !TeX root = ../xdupgthesis.tex`，这样设置后可以使得在任意子文件内均可以直接点击编译而无需切换至主文件再编译，具体请查看[A short manual for TeXworks](https://github.com/TeXworks/manual/releases)中4.2节。

点击文件->打开，选择`xdupgthesis.tex`文件，Toolbars左上角可以切换编译引擎。完全编译选择latexmk，可以自动处理交叉引用和参考文献引用，编译时间较长；不考虑交叉引用和参考文献引用时，快速编译选择XeLaTeX，编译时间较短，需要参考文献引用时切换至BibTeX编译参考文献，接着执行两次XeLaTeX编译可以生成参考文献列表和参考文献引用。

点击文件->删除辅助文件，在弹出的面板中再点击删除可以清理辅助文件，常用于某次报错后清理错误的辅助文件，避免二次报错。

TeXworks内置了PDF查看器，支持正向同步和反向同步功能，具体请查看[A short manual for TeXworks](https://github.com/TeXworks/manual/releases)中5.1节。

### TeXstudio编译

下载[TeXstudio](https://www.texstudio.org/#download)安装包并安装，支持Windows，GNU/Linux和macOS平台。安装后可以查看[TeXstudio : User manual](https://htmlpreview.github.io/?https://github.com/texstudio-org/texstudio/master/utilities/manual/usermanual_en.html)获取更多关于TeXstudio的使用帮助。

打开TeXstudio后，点击文件->打开，选择`xdupgthesis.tex`文件，TeXstudio会自动检测主文档，如果没有自动检测成功，点击选项->主文档进行手动设置，这样设置后可以使得在任意子文件内均可以直接点击编译而无需切换至主文件再编译。点击选项->设置TeXstudio->命令，将Latexmk处值改为`latexmk.exe`，切换至构建标签，将默认编译器改为Latexmk或者XeLaTeX。

TeXstudio无法快速切换编译引擎，只能在选项->设置TeXstudio->构建里修改默认编译器，或者点击工具->命令里临时运行指定的编译引擎。完全编译选择latexmk，可以自动处理交叉引用和参考文献引用，编译时间较长；不考虑交叉引用和参考文献引用时，快速编译选择XeLaTeX，编译时间较短，需要参考文献引用时切换至BibTeX编译参考文献，接着执行两次XeLaTeX编译可以生成参考文献列表和参考文献引用。

点击工具->清理辅助文件，在弹出的面板中选择合适的范围再点击OK便可以清理辅助文件，常用于某次报错后清理错误的辅助文件，避免二次报错。

TeXstudio内置了PDF查看器，支持正向同步和反向同步功能，具体请查看[TeXstudio : User manual](https://htmlpreview.github.io/?https://github.com/texstudio-org/texstudio/master/utilities/manual/usermanual_en.html)中4.10节。

### Texmaker编译

下载[Texmaker](https://www.xm1math.net/texmaker/)安装包并安装，支持Windows，GNU/Linux和macOS平台。安装后可以查看[Texmaker : User manual](https://www.xm1math.net/texmaker/doc.html)获取更多关于Texmaker的使用帮助。

打开Texmaker后，点击文件->打开，选择`xdupgthesis.tex`文件，点击选项->设置当前文档为主文档，这样设置后可以使得在任意子文件内均可以直接点击编译而无需切换至主文件再编译。点击选项->配置Texmaker->命令，将LaTeX-Mk中对应值改为`latexmk`，点击OK。

工具栏中可以切换编译引擎。完全编译选择latexmk，可以自动处理交叉引用和参考文献引用，编译时间较长；不考虑交叉引用和参考文献引用时，快速编译选择XeLaTeX，编译时间较短，需要参考文献引用时切换至BibTeX编译参考文献，接着执行两次XeLaTeX编译可以生成参考文献列表和参考文献引用。

点击工具->清除历史记录，在弹出的面板中再点击删除文件可以清理辅助文件，常用于某次报错后清理错误的辅助文件，避免二次报错。

Texmaker内置了PDF查看器，支持正向同步和反向同步功能，具体请查看[Texmaker : User manual](https://www.xm1math.net/texmaker/doc.html)中3.3节。

### Overleaf编译

用户首先根据[Overleaf](#overleaf)中关于字体安装的介绍安装好字体，再点击左上角的菜单按钮修改编译器为`XeLaTeX`，最后为`xdupgthesis`文档类传入`overleaf`参数，即将`xdupgthesis.tex`中

```latex
\documentclass{xdupgthesis}
```

改为

```latex
\documentclass[overleaf]{xdupgthesis}
```

后即可正常编译。

### TeXPage编译

用户首先根据[TeXPage](#texpage)中关于字体安装的介绍安装好字体，再点击右上角的设置按钮修改LaTeX编译器为`XeLaTeX`，最后为`xdupgthesis`文档类传入`texpage`参数，即将`xdupgthesis.tex`中

```latex
\documentclass{xdupgthesis}
```

改为

```latex
\documentclass[texpage]{xdupgthesis}
```

后即可正常编译。

## 文档类可选参数

本项目模板中`xdupgthesis`文档类支持如下可选参数：

- `overleaf`或`texpage`，详见[Overleaf编译](#overleaf编译)或[TeXPage编译](#texpage编译)
- `mprof`，详见[个人及论文信息填写](#个人及论文信息填写)
- `psd`，详见[论文相似性检测](#论文相似性检测)
- `anonrvw`，详见[论文抽查评估](#论文抽查评估)
- `noloftpre`，详见[插图/表格索引前缀开关](#插图表格索引前缀开关)
- `addloftgap`，详见[插图/表格索引垂直间距开关](#插图表格索引垂直间距开关)
- `ragbtm`，详见[断页机制切换开关](#断页机制切换开关)
- `draft`，详见[草稿模式](#草稿模式)
- `frame`，详见[显示边框](#显示边框)
- `mf=tgtm`或`mf=cm`，详见[数学字体切换开关](#数学字体切换开关)
- `sign`，详见[签名图像](#签名图像)

以上参数功能相互独立，均可任意组合使用，选项之间无先后顺序之分，多个选项之间使用逗号隔开，例如：

```latex
\documentclass[overleaf,mprof,anonrvw]{xdupgthesis}
```

## 内置宏包

本项目模板已内置如下常用宏包，如果需要使用如下宏包，无需用户导入，直接使用即可。

- algorithm
- algorithmicx
- algpseudocode
- algpseudocodex
- amsmath
- amssymb
- amsthm
- bibentry
- bm
- booktabs
- calc
- caption
- diagbox
- enumitem
- environ
- etoolbox
- fancyhdr
- gbt7714
- geometry
- graphicx
- hyperref
- ifpdf
- ifthen
- ltablex
- makecell
- multirow
- natbib
- nicefrac
- pgf
- siunitx
- subfig
- tabularx
- tabulary
- tikz
- tocloft
- unicode-math
- xeCJKfntef
- xspace
- xurl

## 数学字体切换开关

本项目模板支持Cambria Math、TeX Gyre Termes Math和Computer Modern三种数学字体。

- [Cambria Math](https://docs.microsoft.com/en-us/typography/font-list/cambria-math)字体为Microsoft Office默认数学字体，与正文的Times New Roman搭配很和谐。
- [TeX Gyre Termes Math](https://ctan.org/pkg/tex-gyre-math-termes?lang=en)字体内置于TeX Live中，是Times风格的开源字体，同样与正文的Times New Roman搭配比较和谐，但是实测一些字符很难看，例如圆周率`\pi`。
- [Computer Modern](https://www.ctan.org/tex-archive/fonts/cm/)字体为LaTeX默认数学字体，但是实测整体偏瘦，与Times New Roman搭配不是很和谐。

本项目模板默认数学字体为Cambria Math，用户可以自行选择使用TeX Gyre Termes Math和Computer Modern。由于Cambria Math为Microsoft Office内置字体，因此没有安装Microsoft Office的设备无法直接使用，请参考[字体安装](#字体安装)安装Cambria Math字体。

如果用户想要使用TeX Gyre Termes Math字体，需要在`xdupgthesis.tex`中为文档类添加`mf=tgtm`参数（Math Font=TeX Gyre Termes Math），即将

```latex
\documentclass{xdupgthesis}
```

改为

```latex
\documentclass[mf=tgtm]{xdupgthesis}
```

如果用户想要使用Computer Modern字体，需要在`xdupgthesis.tex`中为文档类添加`mf=cm`参数（Math Font=Computer Modern），即将

```latex
\documentclass{xdupgthesis}
```

改为

```latex
\documentclass[mf=cm]{xdupgthesis}
```

## 数学符号

建议排版数学符号时参考推荐性国家标准《物理科学和技术中使用的数学符号》（标准号[GB/T 3102.11-1993](http://openstd.samr.gov.cn/bzgk/gb/newGbInfo?hcno=3DE79450D562E62D41CB6E79FF411054)），该标准已于1994年7月1日实施，自2017年3月23日起，该标准转化为推荐性标准，不再强制执行。

## 参考文献引用

本项目模板已根据学校要求设置了`\cite{}`生成的引用样式，所以直接使用即可符合学校的要求，例如：

```latex
测试引用\cite{tang:press,wanga:medicine,CRAW:future}是否正常。
```

原模板中自带的bib文件中的条目写的不是很规范，因此已被移除替换。目前已添加部分常用类型参考文献条目样例至`xdupgthesis.bib`，用户可以参考使用，需要注意的是，不要轻易使用分组即`{}`，尤其是`author`字段。关于样式标准请参考[参考文献条目样式](#参考文献条目样式)，用户可以自行下载相应标准查看示例。用户可以使用[dblp](https://dblp.org/)生成的bib条目，[百度学术](https://xueshu.baidu.com/)和[Google Scholar](https://scholar.google.com.hk/)导出的bib文件不是很规范，经常有很大问题，感兴趣的可以去[BibTeX format explained](https://www.bibtex.com/g/bibtex-format/)了解bib文件的合法格式，遇到[dblp](https://dblp.org/)没有的条目，可以手动整理。

在[btxdoc](https://mirrors.ustc.edu.cn/CTAN/biblio/bibtex/base/btxdoc.pdf)文档中第3.1章节指出：

> `article`: An article from a journal or magazine. **Required fields**: author, title, journal, year. **Optional fields**: volume, number, pages, month, note.
>
> `book`: A book with an explicit publisher. **Required fields**: author or editor, title, publisher, year. **Optional fields**: volume or number, series, address, edition, month, note.
>
> `booklet`: A work that is printed and bound, but without a named publisher or sponsoring institution. Required field: title. **Optional fields**: author, howpublished, address, month, year, note.
>
> `conference`: The same as INPROCEEDINGS, included for Scribe compatibility.
>
> `inbook`: A part of a book, which may be a chapter (or section or whatever) and/or a range of pages. **Required fields**: author or editor, title, chapter and/or pages, publisher, year. **Optional fields**: volume or number, series, type, address, edition, month, note.
>
> `incollection`: A part of a book having its own title. **Required fields**: author, title, booktitle, publisher, year. **Optional fields**: editor, volume or number, series, type, chapter, pages, address, edition, month, note.
>
> `inproceedings`: An article in a conference proceedings. **Required fields**: author, title, booktitle, year. **Optional fields**: editor, volume or number, series, pages, address, month, organization, publisher, note.
>
> `manual`: Technical documentation. Required field: title. **Optional fields**: author, organization, address, edition, month, year, note.
>
> `mastersthesis`: A Master’s thesis. **Required fields**: author, title, school, year. **Optional fields**: type, address, month, note.
>
> `misc`: Use this type when nothing else fits. **Required fields**: none. **Optional fields**: author, title, howpublished, month, year, note.
>
> `phdthesis`: A PhD thesis. **Required fields**: author, title, school, year. **Optional fields**: type, address, month, note.
>
> `proceedings`: The proceedings of a conference. **Required fields**: title, year. **Optional fields**: editor, volume or number, series, address, month, organization, publisher, note.
>
> `techreport`: A report published by a school or other institution, usually numbered within a series. **Required fields**: author, title, institution, year. **Optional fields**: type, number, address, month, note.
>
> `unpublished`: A document having an author and title, but not formally published. **Required fields**: author, title, note. **Optional fields**: month, year.

在本项目模板示例文件中已经提供了若干个条目供参考。需要注意的是，无论中英文，每个作者均使用`and`连接。除非文献卷号、期号和页码均无，否则不必提供DOI选项。对于网页链接，使用`misc`类型条目，填写`author`、`title`、`howpublished`和`year`选项即可。

---

用户在`\caption{}`中使用`\cite{}`时，由于图表索引的存在，会导致图表引用的文献序号始终靠前，详见[一个小问题，在引用图片的caption中使用\cite{}导致插图索引目录中同样出现引用是要求的吗 · Issue #21](https://github.com/note286/xdupgthesis/issues/21)。

此时用户可以将

```latex
\caption{方案开销\cite{Collinson21}}
```

修改为

```latex
\caption[方案开销]{方案开销\cite{Collinson21}}
```

此时，在图表索引中的无参考文献引用，而在正文中的有参考文献引用，这样就可以避免上述问题。

## 字体形状与字体系列

本项目模板正文默认使用中易宋体和Times New Roman，支持常用的字体形状如意大利和倾斜，支持常见的字体系列如加宽加粗。

对于中易宋体，意大利形状对应中易楷体，倾斜形状对应中易宋体伪斜体，加宽加粗系列对应中易宋体伪粗体。其中，参考[fontspec.pdf](https://mirrors.ustc.edu.cn/CTAN/macros/unicodetex/latex/fontspec/fontspec.pdf)中的示例，设置倾斜程度为`0.2`，参考清华大学学位论文模板[thuthesis.dtx](https://mirrors.ustc.edu.cn/CTAN/macros/latex/contrib/thuthesis/thuthesis.dtx)，设置粗细程度为`3`。

对于Times New Roman，意大利形状及加宽加粗系列均有对应的Times New Roman字体文件，倾斜形状与意大利形状一致，因此无需伪斜体和伪粗体。

字体形状和字体系列可以组合使用，例如：

```latex
意大利形状\textit{测试ABCabc123}
倾斜形状\textsl{测试ABCabc123}
加宽加粗系列\textbf{测试ABCabc123}
加宽加粗系列叠加意大利形状\textbf{\textit{测试ABCabc123}}
加宽加粗系列叠加倾斜形状\textbf{\textsl{测试ABCabc123}}
强调\emph{测试ABCabc123}
```

## 中英文间空白

[xeCJK](https://mirrors.ustc.edu.cn/CTAN/macros/xetex/latex/xecjk/xeCJK.pdf)宏包文档第1节第4点指出：

> 自动调整中英文间空白。

因此，使用`xelatex`来编译中文文档，用户无需主动在中英文之间添加空格或者`~`，`XeLaTeX`会自动处理中英文间空白。

为了避免用户困惑，移除了原模板中为了适应在落后引擎实现中英文间空白而添加的`~`。

## 标点符号

重点说一下引号的使用，中英文的引号在LaTeX中是不同的，中文引号可以直接通过中文输入法输入，英文引号较为特殊，例如：

```latex
这是`单引号'，这是``双引号''，使用英文字体Times New Roman。
这是‘单引号’，这是“双引号”，使用中文字体宋体。
```

其中英文前引号为英文输入法下键盘中`TAB`按键上方的按键，后引号为英文输入法下键盘中引号按键。

更多标点符号的使用如连字符、破折号和波浪号等可见[lshort-zh-cn.pdf](https://mirrors.ustc.edu.cn/CTAN/info/lshort/chinese/lshort-zh-cn.pdf)第2.3.5节。

## 交叉引用

本项目模板有图、子图、表、算法、公式、假设、定义、命题、引理、定理、公理、推论、练习、例、注释、问题、猜想、证明、章节、附录和算法行等引用命令，使用方法如下：

```latex
图的具体内容如\figureref{figu1}所示。
子图的具体内容如\subfigureref{figu1}所示。
表的具体内容如\tableref{tabl1}所示。
算法的具体内容如\algorithmref{algo1}所示。
公式的具体内容如\equationref{equa1}所示。
假设的具体内容如\assumptionref{assu1}所示。
定义的具体内容如\definitionref{defi1}所示。
命题的具体内容如\propositionref{prop1}所示。
引理的具体内容如\lemmaref{lemm1}所示。
定理的具体内容如\theoremref{theo1}所示。
公理的具体内容如\axiomref{axio1}所示。
推论的具体内容如\corollaryref{coro1}所示。
练习的具体内容如\exerciseref{exer1}所示。
例的具体内容如\exampleref{exam1}所示。
注释的具体内容如\remarkref{rema1}所示。
问题的具体内容如\problemref{prob1}所示。
猜想的具体内容如\conjectureref{conj1}所示。
证明的具体内容如\proofref{proo1}所示。
章的具体内容如\chapterref{chap1}所示。
节的具体内容如\sectionref{sect1}所示。
附录的具体内容如\appendixref{appe1}所示。
算法行的具体内容如\algorithmref{algo1}中\lineref{line1}所示。
算法行的具体内容如\algorithmref{algo2}中\lineref{line2}至\lineref{line3}所示。
```

其中子图和普通图的引用详见[图片](#图片)。

章节引用中`chap1`和`chap2`是`\chapter{}`对应的`\label{}`值，而`sect1`和`sect2`是`\section{}`或`\subsection{}`等对应的`\label{}`值。`\chapter{}`对应的是`章`，而`\section{}`或`\subsection{}`等对应的是`节`。

附录的引用请使用`\appendixref{}`而不是`\chapter{}`。

算法行的`\label{}`放在对应语句后即可，例如：

```latex
\State $l(v) \leftarrow \infty$\label{line1}
```

另外，[lshort-zh-cn.pdf](https://mirrors.ustc.edu.cn/CTAN/info/lshort/chinese/lshort-zh-cn.pdf)第3.3节指出：

> `\label`命令可用于记录各种类型的交叉引用，使用位置分别为：
>
> 章节标题：在章节标题命令`\section`等之后紧接着使用。
>
> 行间公式：单行公式在公式内任意位置使用；多行公式在每一行公式的任意位置使用。
>
> 有序列表：在`enumerate`环境的每个\item命令之后、下一个`\item`命令之前任意位置使用。
>
> 图表标题：在图表标题命令`\caption`之后紧接着使用。
>
> 定理环境：在定理环境内部任意位置使用。

## 图片

图片插入时，如果将图片文件放入`figures`文件夹，则无需添加路径，直接使用图片文件名即可，甚至扩展名也可以省略不写，可以参考如下示例。

单张图片插入示例：

```latex
\begin{figure}
\centering
\includegraphics[width=.3\linewidth]{fig1file}
\caption{方案开销}
\label{fig1}
\end{figure}
```

子图插入示例：

```latex
\begin{figure}
\centering
\subfloat[计算开销]{\includegraphics[width=.3\linewidth]{fig2file}%
\label{fig2}}
\hfil
\subfloat[通信开销]{\includegraphics[width=.3\linewidth]{fig3file}%
\label{fig3}}
\caption{方案开销}
\label{fig4}
\end{figure}
```

即使是多个子图排成多行，依然用`\hfil`隔开即可，不需要额外操作，调整好宽度即可。

子图交叉引用的使用方法依然参考[交叉引用](#交叉引用)的要求，由于子图的特殊性，如果需要以下效果，即子图字母需要括号：

> 具体的内容如图 4.2(a) 所示。
>
> 具体的内容可参考图 4.2(a)。

需要使用如下命令，即`\subfigureref{}`而不是`\figureref{}`：

```latex
具体的内容如\subfigureref{fig2}所示。
具体的内容可参考\subfigureref{fig2}。
```

不过如果需要如下的效果：

> 具体的内容如图 4.2a 所示。
>
> 具体的内容可参考图 4.2a。

需要使用如下命令，即与普通引用一致：

```latex
具体的内容如\figureref{fig2}所示。
具体的内容可参考\figureref{fig2}。
```

如果用户需要插入多页pdf文件的某一页，可以使用`page`参数，例如插入`figfile.pdf`的第2页：

```latex
\includegraphics[page=2]{figfile}
```

另外，本项目模板实测`\textwidth`为`441.01773pt`，`\textheight`为`682.86613pt`，对插图字号有要求的用户画图时可参考这两个数值，避免图片尺寸超过页面可编辑范围。

此外，对于`figure`浮动体，不建议使用任何位置参数，让LaTeX引擎将浮动体自动放置在合适的位置，具体原因可见[浮动体位置](#浮动体位置)。

对于图片的格式，优先推荐`.tikz`、`.pgf`和`.pdf`格式的图片，不推荐`.png`和`.jpg`等非矢量图片格式。此外，对于已有的`.pdf`格式的图片，不需要转换成`.eps`文件。针对Microsoft Visio等绘图软件，建议使用打印成`.pdf`的方式，再使用TeX Live自带的`pdfcrop`命令进行快速高效裁剪。其中，使用`.tikz`和`.pgf`格式的图片时，用户需要使用`\input{}`命令而不是`\includegraphics{}`命令。

## 表格

从模板示例中可以看出表中的内容字号为五号，本项目模板已经重定义了三种常见的表格环境的字号，包括`tabular`、`tabularx`和`tabulary`环境，对于这三种表格环境，用户无需手动指定字号。本项目模板内置了部分示例供参考。

此外，对于`table`浮动体，不建议使用任何位置参数，让LaTeX引擎将浮动体自动放置在合适的位置，具体原因可见[浮动体位置](#浮动体位置)。

## 算法

本项目模板已内置`algorithm`、`algorithmicx`和`algpseudocodex`宏包，用户无需手动导入。TeX Live/MacTeX 2020及以下版本的用户使用的是`algpseudocode`宏包而非`algpseudocodex`宏包。

建议TeX Live/MacTeX 2021用户参考[algpseudocodex](https://mirrors.ustc.edu.cn/CTAN/macros/latex/contrib/algpseudocodex/algpseudocodex.pdf)宏包手册中的示例撰写算法，其他低版本用户参考[algorithmicx](https://mirrors.ustc.edu.cn/CTAN/macros/latex/contrib/algorithmicx/algorithmicx.pdf)宏包手册中的示例撰写算法，本项目模板从手册中摘抄了两个算法用于测试。

此外，对于`algorithm`浮动体，不建议使用任何位置参数，让LaTeX引擎将浮动体自动放置在合适的位置，具体原因可见[浮动体位置](#浮动体位置)。

## 浮动体位置

刘海洋的[LaTeX入门](https://book.douban.com/subject/24703731/)第5.3.1节指出：

> 其中可选参数用来设定浮动环境可以出现在页面的位置，即`h`、`t`、`b`、`p`四个选项的组合：
>
> - `h` 此处（here），浮动体的内容被放在代码所在的上下文位置。
> - `t` 页顶（top），浮动体被放在一页的顶部，这可以是代码所在环境的页面或之后的页面，注意当页排版的浮动体可能出现在实际代码之前。
> - `b` 页底（bottom），浮动体被放在一页的底部。
> - `p` 独立一页（page），一个或多个浮动体被放在单独的页面中，这个页面被称为浮动页（float page），与之对应，有正文的页面称为文本页（text page）。
>
> 例如用选项`[hbp]`就表示允许浮动体出现在环境所在位置、页面底部或单独一页，但不允许出现在一页顶部。浮动体允许位置选项的顺序并不重要，LaTeX总是以`htbp`的顺序尝试放置浮动体。不过单独的一个`h`选项通常不总能满足，LaTeX会把它放宽为`ht`两个可能，因此，下面的三个浮动体环境开头其实是等效的：
>
> ```latex
> \begin{figure}[ht]
> \begin{figure}[th]
> \begin{figure}[h]
> ```
>
> 如果不设置位置参数，`figure`和`table`环境默认的位置选项是`tbp`。如果图表较多，最好将浮动图表的位置限定设置得宽松一些，以防止浮动体积压过多，最后统一输出。

本项目模板不建议大家添加位置参数，使用默认值`tbp`即优先浮动在页面顶部，这是由于文章的主题是正文，而非图表，如果一个页面中图标与正文交叉出现，非常影响文章的阅读，因此将所有的浮动体浮动在顶部有利于文章的阅读。此外，强制将浮动体指定在正文中间，并使用如下表等表述更是强烈反对的，应该让图表自由浮动，引用时使用编号。

---

刘海洋的[LaTeX入门](https://book.douban.com/subject/24703731/)第5.3.1节指出：

> 对于含有大量浮动体的文档来说，默认的参数限制都显得过于严格，容易造成浮动体积压无法及时输出的问题，此时就可以修正一些参数。

因此本模板对浮动体所占页面比例进行了适当修改，避免出现浮动页空白比例过多的情况：

```latex
\renewcommand{\topfraction}{.8}
\renewcommand{\floatpagefraction}{.8}
```

用户如果觉得不合适，可以在导言区内重定义以上两个参数进行调节。

## 论文标题

在[PDF元数据](#pdf元数据)中介绍了本项目模板可以自动获取论文中各种元数据，并添加到PDF文档属性中，其中就包括了论文题目，其值位于`thesisinfo.tex`文件中的`\XDU@value@thesis@title`变量中，论文题目中可能含有换行符，如果有换行符，再添加元数据时会有如下警告：

```latex
Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\\' on input line 12.
```

即换行符无法作为元数据的合法字符，因此我们可以使用`\texorpdfstring{\\}{}`来替换`\\`，意思是如果是在`tex`中，则认为是`\\`，如果是在pdf字符串中，则为空。

用户在使用过程中，将`\texorpdfstring{\\}{}`当作`\\`来对待即可，如果论文标题不长或者希望自动换行，不需要换行符的话，删除`\texorpdfstring{\\}{}`即可。

## 插图/表格索引中图表序号与图表标题间距

[tocloft.pdf](https://mirrors.ustc.edu.cn/CTAN/macros/latex/contrib/tocloft/tocloft.pdf)中图表序号宽度变量`\cftfignumwidth`与`\cfttabnumwidth`均直接设置为固定值`2.3em`，本项目模板已做一定程度的自适应调整，如果用户认为图表序号与图表标题间距过大或者过小，均可自行调整，方法为在导言区添加：

```latex
\addtolength{\cftfignumwidth}{1em}
\addtolength{\cfttabnumwidth}{1em}
```

`\cftfignumwidth`对应的是插图索引，`\cfttabnumwidth`对应的是表格索引，上述命令为相应的间距增加指定的距离，两个值均可任意调整，可正可负，可以是小数，也可以仅设置一个。

## 插图/表格索引前缀开关

插图/表格索引中每一项的前缀可以不存在，图片索引里的一定是图，没必要显示为`图 2.1`，直接显示`2.1`即可。插图/表格索引中序号前缀支持开关，用户可以自行选择是否在插图/表格索引中序号前展示前缀，默认展示前缀，如果用户想要关闭前缀，需要在`xdupgthesis.tex`中为文档类添加`noloftpre`参数（No Prefix in Lists of Figures and Tables），即将

```latex
\documentclass{xdupgthesis}
```

改为

```latex
\documentclass[noloftpre]{xdupgthesis}
```

## 插图/表格索引垂直间距开关

默认关闭插图/表格索引中不同章节间的垂直间距，如果用户想要开启垂直间距，需要在`xdupgthesis.tex`中为文档类添加`addloftgap`参数（Add Gap in Lists of Figures and Tables），即将

```latex
\documentclass{xdupgthesis}
```

改为

```latex
\documentclass[addloftgap]{xdupgthesis}
```

## 断页机制切换开关

刘海洋的[LaTeX入门](https://book.douban.com/subject/24703731/)第2.2.8节指出：

> LaTeX使用两种机制处理断页问题，可以使用命令`\raggedbottom`告诉LaTeX让页面中的内容保持它的自然高度，把每一页的页面底部用空白填满。相反，`\flushbottom`则让LaTeX将页面高度均匀地填满，使每一页的底部直接对齐。在标准文档类中，LaTeX会为单面输出的文档（`oneside`选项）设置`\raggedbottom`，而为双面输出的文档（`twoside`选项）设置`\flushbottom`。当排满一页后，页面剩余空间比较大的时候，如果还要排版一个很高的内容（如多行的公式或表格），就会造成难看的断页，通常这是由浮动环境解决的，但在无可避免的时候就需要在两种断页机制下选择一种：双面印刷的书籍使用`\flushbottom`可以保证摊开时左右两页对称，但如果有太多过于松散的页面就不如使用`\raggedbottom`了。

简单来讲，由于学位论文是`twoside`的，默认会将页面高度均匀地填满，使每一页的底部直接对齐。最直观的表现就是对于不满一页内容的页面不受影响，但是满一页内容的页面会在垂直方向上移动元素所在高度，使得行间距或段间距发生变化，甚至节标题的位置也会发生变化。用户可以查看[section行间隔不正常 · Issue #7](https://github.com/note286/xdupgthesis/issues/7)中的讨论，里面有图片描述。

---

本项目模板默认会默认会将页面高度均匀地填满，使每一页的底部直接对齐，用户如想要让页面中的内容保持它的自然高度，把每一页的页面底部用空白填满，需要在`xdupgthesis.tex`中为文档类添加`ragbtm`参数（Ragged Bottom），即将

```latex
\documentclass{xdupgthesis}
```

改为

```latex
\documentclass[ragbtm]{xdupgthesis}
```

## 符号对照表

模板中默认为`lX`，其含义为全部左对齐，符号列根据内容自动设置宽度，且只占据一行不自动换行，符号名称占据剩下的页面宽度，会自动换行，用户无需手动插入换行符干预。更多设置请用户参考[缩略语对照表](#缩略语对照表)介绍进行设置。

## 缩略语对照表

缩略语对照表环境`abbreviationlist`提供了一个参数，用于调节列宽，模板中默认为`lXX`，其含义为全部左对齐，缩略语根据内容自动设置宽度，且只占据一行不自动换行，英文全称与中文对照平分剩下的页面宽度，会自动换行，用户无需手动插入换行符干预。

用户如果想要手动指定宽度，可以将模板中默认的`lXX`改为`p{7.5em}p{10.5em}X`，其含义为第一列为`7.5em`，第二列为`10.5em`，第三列占据剩下的页面宽度，会自动换行，用户无需手动插入换行符干预。如果需要更多自定义的参数，用户可以参考[tabularx](https://mirrors.ustc.edu.cn/CTAN/macros/latex/required/tools/tabularx.pdf)宏包手册。

注意！一定要有一列的参数是`X`，其余列参数可以为`p{}`或者`l`。一般建议最后一列为`X`，其余列参数为`p{}`或者`l`。对于三列的，常见的有`p{7.5em}p{10.5em}X`和`llX`，对于两列的，常见的有`p{7.5em}X`和`lX`，其中`p{}`内的长度值可以自行视情况设置。

如果用户想要手动插入换行符，请将需要插入换行符的单元格放入`\makecell[l]{}`命令中，例如：

```latex
\begin{abbreviationlist}{lXX}
缩略语 & 英文全称 & 中文对照\\
XXX & \makecell[l]{手动换行手动换行\\手动换行} & 自动换行自动换行自动换行自动换行\\
XXX & XXX & XXX\\
\end{abbreviationlist}
```

此外，缩略语对照表支持自动换页，无需用户手动干预。

## 附录

在[西安电子科技大学申请硕士学位相关资料(学术学位)-研究生院/研究生工作部-西安电子科技大学](https://gr.xidian.edu.cn/info/1047/5087.htm)中[1、西安电子科技大学研究生学位论文模板（2015年修订版）-2019.03修订.docx](https://gr.xidian.edu.cn/system/_content/download.jsp?urltype=news.DownloadAttachUrl&owner=1281831001&wbfileid=2792303)里，有如下描述：

> 装订：依次按照中文题名页、英文题名页、声明、摘要、插图索引、表格索引、符号对照表、缩略语对照表、目录、正文、附录（可选）、参考文献、致谢、作者简介的顺序，用学校统一印制的学位论文封面装订成册。

因此，附录是可选的，且位于正文和参考文献之间。

本项目模板支持附录，用户将附录章节放入`appendixes`环境中即可，例如：

```latex
\begin{appendixes}
\include{chapters/edit}
\include{chapters/guide}
\end{appendixes}
```

附录内每一章的格式与正文每一章一致。

如果用户不需要附录，可直接移除`appendixes`环境，例如：

```latex
\begin{document}
\XDUfrontmatter
\include{chapters/abstract}
\XDUmainmatter
\include{chapters/general}
\include{chapters/substance}
\include{chapters/edit}
\include{chapters/guide}
\XDUbackmatter
\include{chapters/thanks}
\include{chapters/resume}
\end{document}
```

## 个人及论文信息填写

用户在`xdupgthesis.cfg`文件中填写个人及论文信息，根据[2022年硕士研究生招生简章-研究生院/研究生工作部-西安电子科技大学](https://gr.xidian.edu.cn/info/1074/10844.htm)和[2022年博士研究生招生简章-研究生院/研究生工作部-西安电子科技大学](https://gr.xidian.edu.cn/info/1075/10994.htm)，我校研究生主要有硕士研究生和博士研究生，硕士研究生主要有学术学位和专业学位两种，博士研究生主要有学术学位和专业学位（工程类）两种，在本项目模板中我们按照如下进行规则对我校研究生进行分类：

- 全体研究生
  - 博士研究生
    - 学术学位博士研究生
    - 专业学位博士研究生
  - 硕士研究生
    - 学术学位硕士研究生
    - 专业学位硕士研究生

用户需要逐项修改`xdupgthesis.cfg`中的每一个变量值，每个变量上方和下方均有注释。上方注释内第一行内容为哪种类型的研究生需要填写，如果不属于该类，可忽略该变量，第二行内容为该变量含义，下方注释为该变量可以填写的内容，请用户从中选择合适的粘贴至对应的变量值内。特别说明，注释内的所有变量可选值均来自学校官方word模板，没有任何改动，其中，模板在[模板来源](#模板来源)和[增加专业学位硕士学位论文封面与中英文题名页](#增加专业学位硕士学位论文封面与中英文题名页)中有所提及。如不放心，可亲自下载word模板查看可选值。

最后，专业学位硕士研究生需要在`xdupgthesis.tex`中为文档类添加`mprof`参数（Master of Professional），即将

```latex
\documentclass{xdupgthesis}
```

改为

```latex
\documentclass[mprof]{xdupgthesis}
```

## 论文相似性检测

[西安电子科技大学研究生学位论文相似性检测实施办法-研究生院/研究生工作部-西安电子科技大学](https://gr.xidian.edu.cn/info/1045/5284.htm)中指出：

> 提交检测的学位论文电子版必须为论文的正文部分（除去封面、目录、参考文献、附录、致谢、在学期间的研究成果等），论文电子版命名规则为：学号-作者姓名-论文题目-二级学科（领域）-导师姓名.doc（pdf）。

用户如需进行论文相似性检测，需要在`xdupgthesis.tex`中为文档类添加`psd`参数（Paper Similarity Detection），即将

```latex
\documentclass{xdupgthesis}
```

改为

```latex
\documentclass[psd]{xdupgthesis}
```

则自动移除如下页面或内容：

- 页眉
- 封面
- 中英文提名页
- 声明页
- 插图索引
- 表格索引
- 符号对照表
- 缩略语对照表
- 目录页
- 参考文献列表页
- 附录页
- 致谢页
- 作者简介页

仅保留中英文摘要和正文内容，如果移除的页面中有研究生院要求保留的，可以提issue反馈。

此外，[某第三方知网论文查重](http://pay.vipcheck.cn/kuaijilunwen/pmlc.html)网站指出：

> 某些软件生成的PDF论文会导致报告乱码。请用Adobe Reader打开PDF论文，全选复制内容，粘贴到WORD中，如WORD中出现乱码，知网报告也会是乱码。苹果电脑生成的PDF一般会乱码，建议在windows系统上生成。报告乱码问题是论文原文件格式导致，如执意用论文PDF文件提交学校也同样会是乱码，故不接受因乱码问题引起的退款。

用户在进行论文相似性检测前，可以根据上述方法对论文进行检查，以防万一。

学校图书馆提供了[大雅论文相似度分析系统](https://dbnav.xidian.edu.cn/newwisdom/doordatabase/databasedetail.html?wfwfid=2403&pageId=14305&id=7153)供大家使用，每个注册用户可检测5次，仅供参考。

## 论文抽查评估

[关于对2020年6月申请授位的研究生学位论文进行抽查评估的通知-研究生院/研究生工作部-西安电子科技大学](https://gr.xidian.edu.cn/info/1044/9053.htm)中指出：

> 提交用于抽查评估的电子版学位论文PDF版，论文的封面及正文中隐去作者学号、姓名、指导教师姓名、学院、学科（领域）及学科门类等相关信息，作者本人的研究成果请保留（删除具体作者信息，体现作者的排序，如第一作者、第一发明人等）。

用户如需进行论文抽查评估，需要在`xdupgthesis.tex`中为文档类添加`anonrvw`参数（Anonymously Review），即将

```latex
\documentclass{xdupgthesis}
```

改为

```latex
\documentclass[anonrvw]{xdupgthesis}
```

则自动移除封面及中英文提名页中如下内容：

- 作者学号
- 作者姓名
- 指导教师姓名、职称
- 学院
- 学科（领域）
- 学位类别
- 分类号

对于`xdupgthesis.cfg`中用户填写的信息，仅输出如下内容：

- 学位类型（硕士/博士）
- 论文类型（thesis/dissertation）
- 中英文题目
- 密级
- 提交日期

对于作者简介页即`resume.tex`文件中的内容，用户使用`\anonrvwinfo{}{}`命令撰写需要隐去的信息，例如使用

```latex
\anonrvwinfo{电子工程}{XXX}学院
```

添加`anonrvw`参数后，pdf会显示`XXX学院`，不添加`anonrvw`参数pdf会显示`电子工程学院`。更多可以参考模板中示例，用户可根据自身情况结合研究生院的要求来撰写。

此外，为了满足部分学院的特殊需求，如[计算机科学与技术学院关于2021年12月博士学位申请工作的通知-西安电子科技大学计算机科学与技术学院](https://cs.xidian.edu.cn/info/1003/11981.htm)中指出：

> 论文封面的作者姓名处必须填写上论文编号。

用户可以在对应处填写论文抽查评估版本显示的内容，例如：

```latex
\setXDU@value@author@name{张三}{031}
```

默认均为空即隐去对应信息，上文中提到的学位类型、论文类型、中英文题目、密级、提交日期等信息为强制输出信息，即对应的第二个参数不生效。

## 草稿模式

在草稿模式中，中英文摘要、正文和附录的行间距会增大，其余部分行间距不变，方便用户批改论文。默认关闭草稿模式，如果用户想要开启草稿模式，需要在`xdupgthesis.tex`中为文档类添加`draft`参数，即将

```latex
\documentclass{xdupgthesis}
```

改为

```latex
\documentclass[draft]{xdupgthesis}
```

在最终交稿时一定要移除`draft`参数。

## 显示边框

显示边框后，可以方便用户检查是否有内容超出版心范围，尤其是公式，容易发生超出边界的情况。默认关闭边框显示，如果用户想要开启边框显示，需要在`xdupgthesis.tex`中为文档类添加`frame`参数，即将

```latex
\documentclass{xdupgthesis}
```

改为

```latex
\documentclass[frame]{xdupgthesis}
```

在最终交稿时一定要移除`frame`参数。

## 签名图像

西安电子科技大学图书馆在[学位论文提交](https://lib.xidian.edu.cn/engine2/general/more?appId=17003&wfwfid=2403&pageId=14305&typeId=2044071)中要求：

> 电子版和纸质版论文的独创性声明和使用授权页都需签字（请手写签字后扫描该页加到电子版论文中）。

本项目模板支持插入签名图像，用户需要自行制作好签名图像，推荐处理成字迹全黑且背景透明并以`.png`格式存储，使用纯白色背景并以其他格式如`.jpg`和`.pdf`等格式存储也可。此外需要将图片四周的空白裁掉，尽量减小字迹与四周的间距。将准备好的签名图像放入`figures/sign/`，用户在`xdupgthesis.cfg`中填写签名图像相关值，需要现场手写的值留空即可。每个签名图像使用`\sign{}`添加，其中分组内为签名图像文件名，无需扩展名且无需路径。如果需要插入电子版的日期，将对应的值填写为日期即可，如

```latex
\setXDU@innovation@author@date{2022年1月10日}
```

最后为`xdupgthesis`文档类传入`sign`参数，即将`xdupgthesis.tex`中

```latex
\documentclass{xdupgthesis}
```

改为

```latex
\documentclass[sign]{xdupgthesis}
```

后编译即可得到嵌入签名图像的PDF。

如果不需要嵌入签名图像，移除`sign`文档类参数即可，`xdupgthesis.cfg`内相关配置不会生效，该页内所有签名位和日期位全部置空。

---

如果用户想要扫描独创性声明和使用授权页一整页再合并到论文中，请自行选择合适的PDF处理工具进行该页的替换。

## 字数统计

[TeXcount](https://app.uio.no/ifi/texcount/index.html)是一款内置于TeX Live的命令行工具，运行如下命令即可得到相应的字数统计结果供参考：

```shell
texcount -total -merge -utf8 xdupgthesis.tex
```

常见的文本编辑器可以通过安装LaTeX相关插件来实现该功能，其他LaTeX专用编辑器一般也有此功能，用户可以自行搜索。

此外，用户可以通过使用Microsoft Word打开PDF文件来查看字数统计供参考。

## 数据同步

为避免论文误删，强烈建议使用具有文件历史版本功能的自动同步工具或者git工具：

- 具有文件历史版本功能的自动同步工具
  - [坚果云](https://www.jianguoyun.com/)，个人免费版用户保存[一个月](https://help.jianguoyun.com/?p=190)的文件历史版本
  - [Nextcloud](https://nextcloud.com/)，免费需自建，roll back a file to [any previous](https://docs.nextcloud.com/server/latest/user_manual/en/files/version_control.html) version
  - [Dropbox](https://www.dropbox.com/)，Dropbox Basic、Plus和Family用户享有[30天](https://help.dropbox.com/zh-cn/files-folders/restore-delete/version-history-overview)的文件恢复期
  - [百度网盘同步空间](https://pan.baidu.com/disk/synchronization/)，SVIP会员用户会保存[100次](https://pan.baidu.com/doc/share/5uFBgKSK4FFqb7A3mlCw1Q-192375227722754)文件修改的历史版本，实测非会员用户会保存2次文件修改的历史版本
- git
  - [GitHub](https://github.com/)
  - [CODING](https://coding.net/)
  - [Gitee](https://gitee.com/)
  - [GitLab](https://gitlab.com/)

LaTeX非常适合搭配git来使用，这是因为LaTeX都是纯文本，利于版本控制，建议参考[下载与编辑](#下载与编辑)中关于源代码每行字数的描述。使用git可以清楚地知道每次修改或添加了什么内容，并填写commit内容，便于后期查看，也可以轻松的回退到任意版本，或者提取某个版本的历史内容。用户可以使用[GitHub Desktop](https://desktop.github.com/)，学习成本很低，易用，使用[SmartGit](https://www.syntevo.com/smartgit/)可以获得更清晰的diff信息，不过后者功能较为复杂，用户可以搭配使用，使用前者提交版本，后者仅作为diff信息查看器使用。

此外，可以使用[FileGee](http://cn.filegee.com/)实现更多的功能，例如不同步辅助文件和编译出的pdf文件，搭配git避免两次commit之间出现的意外情况，等等，更多用法用户可以自行挖掘。总之一句话，一定要使用自动同步工具或者git，不要仅仅使用手动定期备份的方式，一定要有文件历史版本的功能，不要仅仅使用仅同步最新状态的工具。

# 模板来源

本节讲述本项目模板来源，用户不感兴趣可以跳过，直接使用本项目模板即可。

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

本节讲述为什么修改原西安电子科技大学学位论文模板的文件编码，用户不感兴趣可以跳过，直接使用本项目模板即可。

在[CTEX宏集手册](https://mirrors.ustc.edu.cn/CTAN/language/chinese/ctex/ctex.pdf)中4.2章节指出：

> 使用XeLaTeX、LuaLaTeX或upLaTeX编译时，CTEX宏集强制使用UTF-8编码。

由于学校官方模板为GBK编码，因此已所有文件全部转换为UTF-8编码。

# 修复错误

本节讲述如何修复原西安电子科技大学学位论文模板的运行错误，用户不感兴趣可以跳过，直接使用本项目模板即可。

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

在[CTEX宏集手册](https://mirrors.ustc.edu.cn/CTAN/language/chinese/ctex/ctex.pdf)中11.2章节指出：

> 在调用fntef宏包选项的同时，旧版本CTEX宏包由于需要支持CCT系统，会将以\CJK开头的\CJKunderline等宏换名为以\CTEX开头的\CTEXunderline等宏。此功能在新版本的CTEX宏集中已失去意义。

因此，将`xdupgthesis.cls`中两处`\CTEXunderline`替换为`\underline`。

# 字体修正

本节讲述如何修复原西安电子科技大学学位论文模板的字体问题，用户不感兴趣可以跳过，直接使用本项目模板即可。

## 中文字体

[CTEX宏集手册](https://mirrors.ustc.edu.cn/CTAN/language/chinese/ctex/ctex.pdf)中4.3章节指出：

> 如果没有指定fontset的值，CTEX宏集将自动检测用户使用的操作系统，配置相应的字体。

从模板中文档类文件中可以看出仅使用了宋体和黑体，因此后续只考虑宋体和黑体的配置。学校官方的word模板中使用的是Windows自带的中易字体，包括[中易宋体](https://zh.wikipedia.org/wiki/%E4%B8%AD%E6%98%93%E5%AE%8B%E4%BD%93)和[中易黑体](https://zh.wikipedia.org/wiki/%E4%B8%AD%E6%98%93%E9%BB%91%E4%BD%93)，为了保证一致性，统一为`ctexbook`增加`fontset=windows`参数，使之可以调用中易字体，但是由于[中易宋体](https://zh.wikipedia.org/wiki/%E4%B8%AD%E6%98%93%E5%AE%8B%E4%BD%93)和[中易黑体](https://zh.wikipedia.org/wiki/%E4%B8%AD%E6%98%93%E9%BB%91%E4%BD%93)无对应的粗体字体，而在模板中出现了20次粗体命令的调用，具体为：

- 宋体
  - 二级标题即`\section{}`
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

因此需要使用伪粗体来实现粗体效果，但是[CTEX宏集手册](https://mirrors.ustc.edu.cn/CTAN/language/chinese/ctex/ctex.pdf)中版本历史v2.4.4指出：

> General: 不再默认设置xeCJK的伪粗体。

所以需要手动开启伪粗体，在清华大学学位论文模板[thuthesis.dtx](https://mirrors.ustc.edu.cn/CTAN/macros/latex/contrib/thuthesis/thuthesis.dtx)中可以找到如下参数：

> \xeCJKsetup{EmboldenFactor=3}

我们参考该值设置伪粗体的粗细程度为3，即在cls文件中添加

```latex
\PassOptionsToPackage{AutoFakeBold=3}{xeCJK}
```

至此，可以使用中易字体来显示中文，同时利用伪粗体来实现粗体效果。

需要注意的是，[NPUSCG/nputhesis](https://github.com/NPUSCG/nputhesis)中指出：

> 在TeXLive 2019之前的版本中，启用`AutoFakeBold`选项将导致XeLaTeX编译生成的pdf文件内容复制时显示为乱码，进而导致查重报告显示为乱码。

实际测试也发现，TeX Live/MacTeX 2018编译出的pdf文件，大部分文字无法复制及搜索出来，TeX Live/MacTeX 2019及以上版本无问题，因此用户一定要安装TeX Live/MacTeX 2019及以上版本或使用Overleaf/TeXPage进行编译，否则会影响论文相似性检测。

## 英文字体

从模板示例中可以看出所有英文字体均要求为Times New Roman，Times New Roman是有粗体字体的，上面设置的开启伪粗体的全局命令不会影响到Times New Roman字体，在cls文件中使用如下命令可以配置默认英文字体为Times New Roman：

```latex
\BeforeBeginEnvironment{document}{\setmainfont{Times New Roman}}
```

# 修复警告

本节讲述如何修复原西安电子科技大学学位论文模板的警告，用户不感兴趣可以跳过，直接使用本项目模板即可。

## cs4size

```latex
Package ctex Warning: Option `cs4size' is deprecated.
(ctex)                Option `zihao=-4' is set.
```

`xdupgthesis.cls`中`cs4size`替换为`zihao=-4`。

## fancyhdr

```latex
Package ctex Warning: Option `fancyhdr' is deprecated.
(ctex)                `fancyhdr' package is loaded.
```

`xdupgthesis.cls`中`ctexbook`移除选项`fancyhdr`，改为

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

`xdupgthesis.cls`中移除`fntef`参数。

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

`xdupgthesis.cls`中移除如下设置：

```latex
\RequirePackage{caption2}
```

```latex
\renewcommand{\captionlabeldelim}{\ ~}%去冒号
```

`xdupgthesis.cls`中改为使用如下宏包：

```latex
\RequirePackage[labelsep=quad]{caption}
```

## hyperref

```latex
Package hyperref Warning: Option `a4paper' is no longer used.
```

`xdupgthesis.cls`中移除如下代码

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

将`xdupgthesis.cls`中

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

将`xdupgthesis.cls`中

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

将`xdupgthesis.cls`中`\CTEXnoindent`全部替换为`\parindent=0pt`。

## \CTEXindent

```latex
Package ctex Warning: Command `\CTEXindent' is deprecated.
(ctex)                \parindent is set to 2\ccwd .
```

将`xdupgthesis.cls`中`\CTEXindent`全部替换为`\parindent=2\ccwd`。

## Font size

```latex
LaTeX Font Warning: Font shape `OMX/cmex/m/n' in size <10.53937> not available
(Font)              size <10.95> substituted on input line 14.
```

在`xdupgthesis.cls`中增加如下宏包来实现任意字号

```latex
\RequirePackage{lmodern}
```

# 增加功能

本节讲述如何增强原西安电子科技大学学位论文模板的各种问题，用户不感兴趣可以跳过，直接使用本项目模板即可。

## 参考文献条目样式

国家标准《信息与文献 参考文献着录规则》（标准号[GB/T 7714-2015](http://std.samr.gov.cn/gb/search/gbDetailed?id=71F772D8055ED3A7E05397BE0A0AB82A)）已于2015年12月1日实施，而学校原模板中还在使用已废止的国家标准《文后参考文献着录规则》（标准号[GB/T 7714-2005](http://std.samr.gov.cn/gb/search/gbDetailed?id=71F772D78562D3A7E05397BE0A0AB82A)），故本项目将参考文献样式修改为现行的国家标准。

将`xdupgthesis.cls`中`gbt7714-2005`替换为`gbt7714-numerical`即可，`gbt7714-numerical.bst`样式文件在发行版中自带了，最后删除主目录下的`gbt7714-2005.bst`文件。

虽然已经强调要求使用最新版的LaTeX套装，但是不排除有用户依然使用老旧的LaTeX套装，由于老旧版本的TeX Live或MacTeX的`gbt7714`调用接口与新版不一致，因此按照上面的方法参考文献无法正常编译。

本项目模板对此做了适配，[gbt7714](https://mirrors.ustc.edu.cn/CTAN/biblio/bibtex/contrib/gbt7714/gbt7714.pdf)文档中指出：

> 从v2.0版本开始（2020-03-04），用户必须在文档中使用`\biblilographystyle`命令选择参考文献样式，如`gbt7714-numerical`或`gbt7714-author-year`。在早期的版本中，选择文献样式的方法是将`numbers`或`super`等参数传递给`gbt7714`，而不能使用`\bibliographystyle`。这跟标准的LaTeX接口不一致，所以将被弃用。

本项目模板通过判断`gbt7714`版本来针对性地选择合适的宏包和参数来实现多种LaTeX套装版本均可正常编译参考文献。

## 参考文献引用样式

模板示例中有如下表述：

> 学位论文的撰写要本着严谨求实的科学态度，凡有引用他人成果之处，引用处右上角用方括号标注阿拉伯数字编排的序号（必须与参考文献一致），同时所有引用的文献必须用全称，不能缩写，并按论文中所引用的顺序列于文末。

从中可以看出学校要求参考文献引用处右上角用方括号标注阿拉伯数字编排的序号，因此本项目模板直接设置了`\cite{}`命令对应的引用样式为引用处右上角用方括号标注阿拉伯数字编排的序号，用户直接使用`\cite{}`命令即可产生符合要求的参考文献引用样式。

此外，移除了主文件中没有必要的`refcompress`参数和cls样式文件中对应的代码，改为默认参考文献连续编号压缩。同时移除了主文件中的`\nocite{*}`，即没有引用的参考文献不在参考文献列表中显示。

## URL自动换行

增加了`xurl`宏包的自动调用，实现任意字符处可换行，避免出现URL上一行过于松散的情况。

[xurl宏包](https://mirrors.ustc.edu.cn/CTAN/macros/latex/contrib/xurl/doc/xurl.pdf)文档有如下表述：

> Package xurl loads package url by default and defines possible url breaks for all alphanumerical characters and = / . : * - ~ ' "

## 教育背景时间对齐

原模板中使用`\hspace{3.5em}`为结束时间占位，但可能会导致上下两行的逗号无法对齐。

因此改为使用幻影即`\phantom{2005.07}`来生成和上一行一样宽度的空白盒子，用户在使用过程中可以将其改为自己的上一行的结束时间以保证最准确的空白盒子宽度。

## 交叉引用名称

为了方便大家使用，支持图、子图、表、算法、公式、假设、定义、命题、引理、定理、公理、推论、练习、例、注释、问题、猜想、证明、章节、附录和算法行等引用命令，具体用法见[交叉引用](#交叉引用)。

本项目模板中利用`\xspace`支持交叉引用处自动处理前后空白，即非中文字符与中文字符之间有空白。但由于`xspace`宏包默认不支持中文标点的处理，故本项目模板从国家标准《标点符号用法》（标准号[GB/T 15834-2011](http://www.moe.gov.cn/ewebeditor/uploadfile/2015/01/13/20150113091548267.pdf)）中选取了全部中文标点进行了支持，包括句号、问号、叹号、逗号、顿号、分号、冒号、引号、破折号、省略号、着重号、连接号、间隔号、书名号、专名号。当交叉引用序号后为普通英文标点或上述中文标点时，其后无空白。

## PDF元数据

增加了自动添加PDF元数据即文档属性的功能，包括标题、主题和作者三项，用户可以右键PDF文件查看自动添加的文档属性值。其中标题来自`thesisinfo.tex`文件中`\XDU@value@thesis@title`值，作者来自`\XDU@value@author@name`值，而主题由`西安电子科技大学`字样、`\XDU@value@degreemark`值和`学位论文`拼接而成。该功能无需用户干预，自动实现PDF元数据的添加。

## 各级标题样式

模板示例中有如下表述：

> 三级标题缩进 2 字符，字体为宋体，字号为四号加粗
>
> 正文内容字体为宋体，字号为小四号

学校要求三级标题即`\subsection{}`缩进2字符，字号为四号加粗，缩进2字符即缩进`2em`实际为缩进`28bp`即2个四号字符宽度。但是由于正文内容字号为小四号，会导致三级标题和正文无法对齐。本模板对此进行了修正，不再缩进`2em`，改为缩进`24bp`即2个小四号字符宽度，以便于三级标题和正文对齐。

---

模板示例中有如下表述：

> 正文中如果确需四级标题，用（1）、（2）形式标出

因此本模板对四级标题即`\subsubsection{}`样式做出了修正，并设置缩进为`48bp`即4个小四号字符宽度。

## 子图及图片标题

原模板中不支持子图，根据[bare_adv.tex](https://mirrors.ustc.edu.cn/CTAN/macros/latex/contrib/IEEEtran/bare_adv.tex)中的示例，我们采用`subfig`宏包来实现子图的插入，具体使用方法参考[图片](#图片)。

此外，本项目修正了图片标题与图片的间距过小的问题，在清华大学学位论文模板[thuthesis.dtx](https://mirrors.ustc.edu.cn/CTAN/macros/latex/contrib/thuthesis/thuthesis.dtx)中可以找到如下参数：

```latex
\captionsetup{
  font           = thu,
  labelsep       = quad,
  skip           = 6bp,
  figureposition = bottom,
  tableposition  = top,
}
```

据此我们也将图片标题与标题之间的间距从`0pt`调整为`6bp`，在cls文件中做如下修改：

```latex
\setlength{\abovecaptionskip}{6bp}
```

## 显示图表索引前缀

原模板无法显示`插图索引`和`表格索引`的图表前缀，本项目已修复，用户使用时无需额外操作。

## 图表索引与目录中引导符一致

移除原模板中对目录中引导符的自定义设置即可保证图表索引与目录中引导符一致。

## 增强符号对照表和缩略语对照表

原模板中的符号对照表和缩略语对照表为列表环境，无法自动对齐，使用很不方便。

本项目基于`tabularx`环境实现了自定义符号对照表和缩略语对照表环境，用户只需要像使用表格一样去填写内容即可，支持跨页，模板中正文的示例已经更新，用户可参考示例填写。

从模板示例中可以看出符号对照表和缩略语对照表内容字号为小四号，行距为固定值20磅，因此本项目设置符号对照表和缩略语对照表环境的行间距倍数为`1.6666666667`。

用户可自定义列宽参数，具体请参考[符号对照表](#符号对照表)和[缩略语对照表](#缩略语对照表)。

## 增加专业学位硕士学位论文封面与中英文题名页

在[西安电子科技大学申请硕士学位相关资料(统招专业学位)-研究生院/研究生工作部-西安电子科技大学](https://gr.xidian.edu.cn/info/1047/5086.htm)下方有附件[西安电子科技大学研究生学位论文模板（2015版）-申请专业学位硕士研究生使用-2019.03.rar](https://gr.xidian.edu.cn/system/_content/download.jsp?urltype=news.DownloadAttachUrl&owner=1281831001&wbfileid=2792296)，该压缩包SHA-1值为：

> 16FE66A1FCFA77112C18611598EB05506CF95747

其内有`专业学位硕士研究生使用学位论文模板（2015年修订版）的相关说明.docx`，有如下描述：

> 专业硕士学位论文模板（2015年修订版）从申请2015年9月授位的专业学位硕士研究生开始执行，请各位同学严格按照要求撰写论文。
>
> 一、本次所有学位论文的主体使用同一个模板，使用者根据情况选择不同的信息进行输入，生成不同的学位论文类型。
>
> 二、本次单独设计了专业硕士学位论文的封面、中英文题名页，打印装订时必须采用专业硕士学位论文的封面、中英文题名页。

根据压缩包内的`2、西安电子科技大学专业学位硕士学位论文封面及中英文题名页模板（2015年版）-2019.03修订.docx`文件对专业硕士学位论文模板的封面与中英文题名页进行适配。

# 版本记录

- `2022-01-10` [`v3.0.0`](https://github.com/note286/xdupgthesis/releases/tag/v3.0.0) 支持独创性声明和使用授权页插入电子版日期。
- `2022-01-06` [`v2.0.0`](https://github.com/note286/xdupgthesis/releases/tag/v2.0.0) 支持插入签名图像。
- `2022-01-05` [`v1.25.0`](https://github.com/note286/xdupgthesis/releases/tag/v1.25.0) 升级algpseudocode宏包为algpseudocodex宏包。
- `2022-01-04` [`v1.24.3`](https://github.com/note286/xdupgthesis/releases/tag/v1.24.3) 移除原模板加粗命令别名。
- `2022-01-04` [`v1.24.2`](https://github.com/note286/xdupgthesis/releases/tag/v1.24.2) 更改ctexbook字体为手动配置。
- `2022-01-04` [`v1.24.1`](https://github.com/note286/xdupgthesis/releases/tag/v1.24.1) 移除宋体显式调用。
- `2022-01-03` [`v1.24.0`](https://github.com/note286/xdupgthesis/releases/tag/v1.24.0) 修改enumerate、itemize和description环境默认间距。
- `2021-12-30` [`v1.23.1`](https://github.com/note286/xdupgthesis/releases/tag/v1.23.1) 修复多个参考文献引用序号分隔符。
- `2021-12-27` [`v1.23.0`](https://github.com/note286/xdupgthesis/releases/tag/v1.23.0) 配置数学字体样式为ISO样式。
- `2021-12-26` [`v1.22.2`](https://github.com/note286/xdupgthesis/releases/tag/v1.22.2) 修复数学字体无法加粗。
- `2021-12-22` [`v1.22.1`](https://github.com/note286/xdupgthesis/releases/tag/v1.22.1) 修复macOS无法调用TeX Gyre Termes Math字体。
- `2021-12-22` [`v1.22.0`](https://github.com/note286/xdupgthesis/releases/tag/v1.22.0) 修改默认数学字体为Cambria Math。
- `2021-12-12` [`v1.21.0`](https://github.com/note286/xdupgthesis/releases/tag/v1.21.0) 新增显示边框功能。
- `2021-12-12` [`v1.20.0`](https://github.com/note286/xdupgthesis/releases/tag/v1.20.0) 新增草稿模式功能。
- `2021-12-04` [`v1.19.0`](https://github.com/note286/xdupgthesis/releases/tag/v1.19.0) TeXPage文档移除代码标签。
- `2021-11-19` [`v1.18.0`](https://github.com/note286/xdupgthesis/releases/tag/v1.18.0) 增加字体形状与字体系列命令。
- `2021-11-18` [`v1.17.1`](https://github.com/note286/xdupgthesis/releases/tag/v1.17.1) 修正页码字号为小五号。
- `2021-11-16` [`v1.17.0`](https://github.com/note286/xdupgthesis/releases/tag/v1.17.0) 增加断页机制切换开关。
- `2021-11-14` [`v1.16.2`](https://github.com/note286/xdupgthesis/releases/tag/v1.16.2) 修正四级标题样式。
- `2021-11-14` [`v1.16.1`](https://github.com/note286/xdupgthesis/releases/tag/v1.16.1) 修改三级标题缩进。
- `2021-11-14` [`v1.16.0`](https://github.com/note286/xdupgthesis/releases/tag/v1.16.0) 增加插图/表格索引垂直间距开关。
- `2021-10-31` [`v1.15.0`](https://github.com/note286/xdupgthesis/releases/tag/v1.15.0) 支持论文抽查评估自定义隐去信息替换内容。
- `2021-10-30` [`v1.14.1`](https://github.com/note286/xdupgthesis/releases/tag/v1.14.1) 支持交叉引用空白自动处理。
- `2021-10-30` [`v1.14.0`](https://github.com/note286/xdupgthesis/releases/tag/v1.14.0) 盲审版本增加自动处理作者简介功能。
- `2021-10-29` [`v1.13.1`](https://github.com/note286/xdupgthesis/releases/tag/v1.13.1) 修正算法序号为分章依序编码。
- `2021-10-29` [`v1.13.0`](https://github.com/note286/xdupgthesis/releases/tag/v1.13.0) 增加算法行引用。
- `2021-10-28` [`v1.12.3`](https://github.com/note286/xdupgthesis/releases/tag/v1.12.3) 表格环境重定义为5号字并新增表格示例和说明。
- `2021-10-27` [`v1.12.2`](https://github.com/note286/xdupgthesis/releases/tag/v1.12.2) 论文相似性检测仅保留中英文摘要和正文内容。
- `2021-10-26` [`v1.12.1`](https://github.com/note286/xdupgthesis/releases/tag/v1.12.1) 修正参考文献引用样式。
- `2021-10-26` [`v1.12.0`](https://github.com/note286/xdupgthesis/releases/tag/v1.12.0) 支持插图表格索引前缀开关。
- `2021-10-25` [`v1.11.0`](https://github.com/note286/xdupgthesis/releases/tag/v1.11.0) 支持论文抽查评估。
- `2021-10-25` [`v1.10.0`](https://github.com/note286/xdupgthesis/releases/tag/v1.10.0) 支持附录功能。
- `2021-10-25` [`v1.9.0`](https://github.com/note286/xdupgthesis/releases/tag/v1.9.0) 支持论文相似性检测版本输出。
- `2021-10-24` [`v1.8.3`](https://github.com/note286/xdupgthesis/releases/tag/v1.8.3) 修正三、四级标题不加粗的bug。
- `2021-10-24` [`v1.8.2`](https://github.com/note286/xdupgthesis/releases/tag/v1.8.2) 修正关键词之间的空格。
- `2021-10-24` [`v1.8.1`](https://github.com/note286/xdupgthesis/releases/tag/v1.8.1) 修正英文摘要段间空一行。
- `2021-10-23` [`v1.8.0`](https://github.com/note286/xdupgthesis/releases/tag/v1.8.0) 增加专业学位硕士学位论文封面与中英文题名页。
- `2021-10-21` [`v1.7.0`](https://github.com/note286/xdupgthesis/releases/tag/v1.7.0) 适配旧版gbt7714。
- `2021-10-20` [`v1.6.0`](https://github.com/note286/xdupgthesis/releases/tag/v1.6.0) 支持符号对照表和缩略语对照表跨页。
- `2021-10-20` [`v1.5.1`](https://github.com/note286/xdupgthesis/releases/tag/v1.5.1) 修复图表引用多余前缀。
- `2021-10-20` [`v1.5.0`](https://github.com/note286/xdupgthesis/releases/tag/v1.5.0) 允许用户自定义符号对照表列宽。
- `2021-10-20` [`v1.4.0`](https://github.com/note286/xdupgthesis/releases/tag/v1.4.0) 允许用户自定义缩略语对照表列宽。
- `2021-10-20` [`v1.3.1`](https://github.com/note286/xdupgthesis/releases/tag/v1.3.1) 移除超链接颜色框。
- `2021-10-19` [`v1.3.0`](https://github.com/note286/xdupgthesis/releases/tag/v1.3.0) 支持Overleaf字体放入文件夹。
- `2021-10-19` [`v1.2.0`](https://github.com/note286/xdupgthesis/releases/tag/v1.2.0) 修改bib文件位置并精简bib文件调用方式。
- `2021-10-19` [`v1.1.0`](https://github.com/note286/xdupgthesis/releases/tag/v1.1.0) 支持Overleaf。
- `2021-10-18` [`v1.0.0`](https://github.com/note286/xdupgthesis/releases/tag/v1.0.0) 重命名配置文件、文档类文件和主文件。
- `2021-10-18` [`v0.6.0`](https://github.com/note286/xdupgthesis/releases/tag/v0.6.0) 增强符号对照表和缩略语对照表。
- `2021-10-18` [`v0.5.2`](https://github.com/note286/xdupgthesis/releases/tag/v0.5.2) 修正图表索引与目录中引导符一致。
- `2021-10-18` [`v0.5.1`](https://github.com/note286/xdupgthesis/releases/tag/v0.5.1) 显示图表索引前缀。
- `2021-10-17` [`v0.5.0`](https://github.com/note286/xdupgthesis/releases/tag/v0.5.0) 支持插入子图。
- `2021-10-17` [`v0.4.0`](https://github.com/note286/xdupgthesis/releases/tag/v0.4.0) 支持PDF自动添加元数据。
- `2021-10-16` [`v0.3.0`](https://github.com/note286/xdupgthesis/releases/tag/v0.3.0) 支持URL自动换行。
- `2021-10-16` [`v0.2.0`](https://github.com/note286/xdupgthesis/releases/tag/v0.2.0) 修改参考文献引用样式。
- `2021-10-16` [`v0.1.0`](https://github.com/note286/xdupgthesis/releases/tag/v0.1.0) 修改参考文献样式。
- `2021-10-16` [`v0.0.6`](https://github.com/note286/xdupgthesis/releases/tag/v0.0.6) 转换bst文件编码为UTF-8。
- `2021-10-16` [`v0.0.5`](https://github.com/note286/xdupgthesis/releases/tag/v0.0.5) 修正英文字体。
- `2021-10-15` [`v0.0.4`](https://github.com/note286/xdupgthesis/releases/tag/v0.0.4) 修复编译警告。
- `2021-10-15` [`v0.0.3`](https://github.com/note286/xdupgthesis/releases/tag/v0.0.3) 修正中英文字体。
- `2021-10-15` [`v0.0.2`](https://github.com/note286/xdupgthesis/releases/tag/v0.0.2) 修复编译错误。
- `2021-10-15` [`v0.0.1`](https://github.com/note286/xdupgthesis/releases/tag/v0.0.1) 转换编码为UTF-8。
- `2021-10-15` [`v0.0.0`](https://github.com/note286/xdupgthesis/releases/tag/v0.0.0) 提交学校官方原始模板。

# 免责声明

本模板的发布遵守[LaTeX Project Public License 1.3c](http://www.latex-project.org/lppl.txt)以及其后的最新版本，使用前请认真阅读协议内容。

本模板为作者个人制作，使用仅供参考，任何由于使用本模板而引起的任何问题均与本模板作者无关。

任何个人或组织以本模板为基础进行修改、扩展而生成的新的专用模板，请严格遵守[LaTeX Project Public License 1.3c](http://www.latex-project.org/lppl.txt)协议以及其后的最新版本。由于违犯协议而引起的任何纠纷争端均与本模板作者无关。

# 作者

- [@note286](https://github.com/note286)

