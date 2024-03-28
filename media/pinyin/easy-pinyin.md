%title% Lacewing's Toolkit：轻松打出拼音        
%author% Lacewing

ooooooooo.   *88888*                         *88888*
\`888   \`Y88.                                       
 888   .d88' *oooo*  ooo. .oo.   oooo    ooo *oooo*  ooo. .oo.
 888ooo88P'  *\`888*  \`888P"Y88b   \`88.  .8'  *\`888*  \`888P"Y88b
 888          *888*   888   888    \`88..8'    *888*   888   888
 888          *888*   888   888     \`888'     *888*   888   888
o888o        *o888o* o888o o888o     .8'     *o888o* o888o o888o
                               .o..P'
                               \`Y8P'

---

# 轻松打出拼音

- 为什么要打拼音？

- 教学
    - macOS
    - Windows
    - 部分手机键盘

- 扩展
    - 拼音的附加符号
    - 写法与排版问题
    - 文字处理中的拼音

---

# 观前提示

如无说明，本 *视频* 及其 *素材* 按 [CC-BY 4.0](https://creativecommons.org/licenses/by/4.0/)许可发布。

  .oooooo.     .oooooo.           oooooooooo.  oooooo   oooo
 d8P'  \`Y8b   d8P'  \`Y8b          \`888'   \`Y8b  \`888.   .8'
888          888                   888     888   \`888. .8'
888          888          8888888  888oooo888'    \`888.8'
888          888                   888    \`88b     \`888'
\`88b    ooo  \`88b    ooo           888    .88P      888
 \`Y8bood8P'   \`Y8bood8P'          o888bood8P'      o888o

https://github.com/lace-wing/lll-public/tree/master/media/pinyin

---

# 观前提示

- 本视频中所提 [拼音](https://en.wikipedia.org/wiki/Romanization_of_Chinese)皆为 *汉语拼音*；

- 本教程仅介绍 [最轻松](单次操作最少，但不一定是最好/多次操作最少的)的方法。

---

# 为什么要打拼音？

- 生字：“蠡（lǐ），蟲（chóng）齧（niè）木中也。”

<br>
- 多音字：“和（hé、hè、huó、huò、hú）”

<br>
- 只是好（wú）奇（liáo）……

---

# 不太轻松的方法

<br>
- 上网搜索，复制粘贴；
    <br>
    - 切换窗口搜寻、复制……
    <br>
    - 切回来复制……
    <br>
    - 呃……

<br>
- 输入法的提示框里找；
    <br>
    - 记住各种入口……
    <br>
    - 翻找符号……
    <br>
    - 太慢！

<br>
- 使用专门的软件；
    <br>
    - 找软件……
    <br>
    - 安装，配置……
    <br>
    - 也许不好用，换一个试……
    <br>
    - 太麻烦！（长期考虑下并不）

<br>
- 我是 Unicode 超人；
    <br>
    - ……真的有人 `Option+00e1` ？
    <br>
    - 不现实！

---

# 比较轻松的方法

<br>
- 文本替换/ *定义短语*；
<br>
    - *打表*：
<br>
        - 比较累，
        - 但常用拼音字符只有 6 \* 4 = 24 个，还算好打！
        - 不过难以扩展！
<br>
    - 使用脚本：
<br>
        - 得写/部署脚本（其实还好）！
        - 但灵活性高，容易扩展！

<br>
- *死键* 修饰字母；
<br>
    - 需要记一点组合键！
<br>
    - 很快；兼容性较好！

<br>
- *触屏软键盘*（手机）。

---

# 死键（Dead Keys）

不产生字符，但会影响之后/前的键。

<br>
比如：  
`Option+w` 会在其后输入的字母上添加或移除 ˙；
<br>
`Option+w o` 会打出 ȯ；
<br>
`Option+u u Shift+Option+w` 会打出 ü̇。

<br>
每个输入法有自己的死键组合，
请注意使用正确的输入法。

---

# macOS

macOS 原生适配拼音死键 (Chinese Mac Contributors, n.d.)。

<br>
- 更新英文输入法；
    - ABC → ABC — Extended
<br>
- 记住四声调的死键（很好记）；
    - `Option` + `a` `e` `v` 或 `\``。
<br>
- 记住给 ü 标调的方法；
    1. 输入声调死键；
    2. 输入 `v`（就是拼音输入法里被拿来当 ü 的那个）

<br>
记得切换到 *ABC — Extended* 输入法，毕竟没标调的都是英文字母。

---

# Windows

输入法 US-International 的死键没法打出阴平和上声，
<br>
所幸有人制作了对应的输入法：US-International+Pinyin (Wong, F., 2019)。

<br>
- 更新英文输入法；
    - US/US-International → US-International+Pinyin
        1. 下载并 *解压* 安装文件；
        2. 双击其中的 `setup.exe` 安装（信任开发者）。
    - 若要卸载，再次运行 `setup.exe` 并选择“uninstall”即可。
    - [本教程素材](https://github.com/lace-wing/lll-public/tree/master/media/pinyin)中有输入法安装文件 `US_International+Pinyin_keyboard_v2.zip`！
    - 也可以在作者的 [博客](https://felixwong.com/US_International+Pinyin_keyboard_v2.zip)下载！
<br>
- 记住四声调的死键（也很好记）：
    - `-` `'` `=` 或 `\``；
        1. 先输入声调死键，不会产生字符；
        2. 再输入一元音，产生带声调的字母。
    - 如果要输入原本的字符，在死键后按空格即可！
<br>
- 记住输入 ü 的方法： `Ctrl+Alt+u`。
    - 在声调死键后这样输入即可给 ü 标调。

<br>
记得切换到 *US-International+Pinyin* 输入法。

---

# Windows

少部分机器（如我的 Arm64 Windows 虚拟机）无法正常使用上述输入法，
只得采用其他方案，这里选择在自定义短语里打表：

<br>
- 在设置里找到用户自定义短语（藏得真深啊）；
<br>
- 配置短语。
    - [本教程素材](https://github.com/lace-wing/lll-public/tree/master/media/pinyin)中有拼音短语文件 `user-defined-phrase-pinyin.dat`！
    - 也可以自己写！
<br>

在 *微软拼音输入法* 下打出短语，选择拼音字符。

---

# 手机

iOS 的拼音键盘支持拼音字母键。

<br>
在 *拼音输入法* 下长按无声调的字母键，
即可选择带声调的字母打出。

若要打出 ü，长按 v。

---

# 手机

其他输入法则有各自的方法，如：
- 长按弹出 UI，
- 侧边栏，
- 符号表。

---

# 扩展内容

*感谢你看到这里，你已经了解打拼音字母的基本技巧了！*

接下来是 *也很有用的* 扩展内容。

---

# 附加符号（Diacritic）

添加在字母上的符号 (Blažek, F, n.d.)。

不只汉语拼音的四个声调，
不一定在字母上方，
也不一定用于注音。

例如：fùjiā、café 和 résumé。

---

# 拼音声调（Tone）

## 阴平（Flat）
`¯`，长音符（Macron）。

<br>
## 阳平（Rising）
`´`，尖音符（Acute）。

<br>
## 上声（Falling-rising）
`ˇ`，抑扬符（Caron）。

<br>
## 去声（Falling）
`\``，重音符（Grave）。

<br>
## 轻声（Neutral）
一般不标调。

---

# ü 的 ¨

拼音字母 ü 上的 ¨ 是元音变化符（Umlaut）
(International Phonetic Association, 2020, fig. VOWELS, "y")
(Blažek, n.d., sec. Diaeresis / Umlaut)
而不是分音符（Diaeresis），
虽然他俩长得一样……

---

# 写法与排版问题

虽然现代输入和排版系统是基于西文设计的，
但对拼音的处理还是有不少问题。

---

# 声调符号

`¯` `´` `ˇ` 和 `\``。

<br>
`´` 和 `\`` 在不同字体中表现不同 (Liu, E. Q., 2017, sec. 声调造型)；
拼音上到底遵循西文从上往下写导致的上大下小，
还是拼音习惯从下往上写的上小下大？

---

# u ü 之争

汉语拼音方案中，j、q、x 和 y 后没有 u ü 歧义，
ü 变为了 u，(汉语拼音方案, 1958, sec. 3:4) 大部分拼音输入法也识别 u。

<br>
而 lüe 和 nüe 的 ü 不能改为 u，即使没有歧义；
但大部分拼音输入法依然识别 u。

---

# 教育界的拼音符号

日常使用中，简单地打出拼音字符就够了。

<br>
如果是教人写拼音，就要格外注意其形状
(Liu, E. Q., 2017, sec. 字母 a/g 字形问题; Regained T., 2020)：

<br>
a 还是 ɑ ？

<br>
g 还是 ɡ ？

---

# 教育界的拼音符号

符合手写习惯的是
(W3C Groups, 2023, sec. 3.3.4.1:8-9; 中华人民共和国教育部, 2012, pp. 6-16)：

<br>
*ɑ*             而不是            *a*

单层小写 A（不是希腊字母 ⍺）    双层小写 A

<br>
*ɡ*             而不是            *g*

单层小写 G                      双层小写 G

<br>
IPA 也使用这两种符号。

---

# 文字处理（Word Processing）中的拼音

本教程只讲打出拼音字符；
字处理时则不需要拘泥于特定字符，
插图片、拼字符等有时效果会更好。

<br>
MS Word，WPS 等就有插入拼音，甚至四线三格的工具 (卡拉麦麟, 2023)，
适应特化用途。

---

# This was Lacewing's Toolkit
# 这是 Lacewing 的工具箱
# zhèshì Lacewing de gōngjùxiāng


<br>
*祝你 pīn dú yú kuài！*

---

# 引用

Liu, E. Q. (2017, August 11). _Wǒ ài pīnyīn!_ The Type.
    https://www.thetype.com/2017/08/11606/

Regained T. (2020, October 21). _A字有四样写法?_ 世界尽头.
    https://hardbloodworld.wordpress.com/2020/10/21/a字有四样写法？/

Colourphilosophy. (2009, April 17). _拉丁字母的故事._ The Type.
    https://www.thetype.com/2009/04/994/

Blažek, F. (n.d.). _Diacritics Project._ Typo. http://diacritics.typo.cz/

---

# 引用

Chinese Mac Contributors. (n.d.). _Romanization._ Chinese Mac.
    https://chinesemac.org/pages/romanization.html

Wong, F. (2019, November 30). _How to type Pinyin in Windows 10 and 11._ Felix Wong.
    https://felixwong.com/2019/11/how-to-type-pinyin-in-windows-10/

W3C Groups. (2023, November 1). _Requirements for Chinese text layout_, 3.3.4. W3C.
    https://www.w3.org/TR/clreq/

中华人民共和国教育部. (2012, June 1). _汉语拼音正词法基本规则._
    http://www.moe.gov.cn/ewebeditor/uploadfile/2015/01/13/20150113091717604.pdf

---

# 引用

_汉语拼音方案._ (1958, February 1).
    http://www.moe.gov.cn/ewebeditor/uploadfile/2015/03/02/20150302165814246.pdf

卡拉麦麟. (2023, July 19). _史上最快打出拼音的方法(自带音标声母韵母)_ 知乎专栏.
    https://zhuanlan.zhihu.com/p/105186132

International Phonetic Association. (2020).
    _THE INTERNATIONAL PHONETIC ALPHABET (revised to 2020)._ In _IPA._
    https://www.internationalphoneticassociation.org/IPAcharts
    /IPA_chart_orig/pdfs/IPA_Kiel_2020_full.pdf

---

# 工具

[mdp](https://github.com/visit1985/mdp) — 幻灯片渲染
 
[OBS Studio](https://obsproject.com/) — 视频录制
 
[Kdenlive](https://kdenlive.org/) — 视频剪辑

---

# 特别感谢

[幽の白银](https://space.bilibili.com/386302732/) — 测试输入法 US-International+Pinyin 在 Intel x64 Windows 11 上的表现

---

 \_\_         \_\_\_\_\_\_     \_\_\_\_\_\_     \_\_  \_\_
/\\ \\       /\\  \_\_ \\   /\\  \_\_\_\\   /\\ \\\_\\ \\
\\ \\ \\\_\_\_\_  \\ \\  \_\_ \\  \\ \\ \\\_\_\_\_  \\ \\\_\_\_\_ \\
 \\ \\\_\_\_\_\_\\  \\ \\\_\\ \\\_\\  \\ \\\_\_\_\_\_\\  \\/\\\_\_\_\_\_\\
  \\/\_\_\_\_\_/   \\/\_/\\/\_/   \\/\_\_\_\_\_/   \\/\_\_\_\_\_/

 \_\_     \_\_     \_\_     \_\_   \_\_     \_\_\_\_\_\_     \_\_\_\_\_\_
/\\ \\  \_ \\ \\   /\\ \\   /\\ "-.\\ \\   /\\  \_\_\_\\   /\\  \_\_\_\\
\\ \\ \\/ ".\\ \\  \\ \\ \\  \\ \\ \\-.  \\  \\ \\ \\\_\_ \\  \\ \\\_\_\_  \\
 \\ \\\_\_/".~\\\_\\  \\ \\\_\\  \\ \\\_\\\\"\\\_\\  \\ \\\_\_\_\_\_\\  \\/\\\_\_\_\_\_\\
  \\/\_/   \\/\_/   \\/\_/   \\/\_/ \\/\_/   \\/\_\_\_\_\_/   \\/\_\_\_\_\_/
