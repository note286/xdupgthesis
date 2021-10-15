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
\AtBeginDocument{\setmainfont{Times New Roman}}
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

