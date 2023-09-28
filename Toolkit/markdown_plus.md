---
title: Markdown+
author: Lacewing
description: An introduction to Markdown and its toolkit

paginate: true
transition: wipe
theme: uncover
---
<!-- _paginate: false -->

# Markdown+

## 够简单，够实用

Markdown 简介及相关扩展工具推荐

---

## Markdown

**Markdown / MD** 是一款用于*格式化文本*的[标记语言](https://zh.wikipedia.org/wiki/置标语言)

```md
**Markdown / MD** 是一款用于*格式化文本*的[标记语言](https://zh.wikipedia.org/wiki/置标语言)
```

---

## 为什么用 Markdown？

- 容易阅读，转换灵活
- 方便编辑，专注内容
- 生态良好，几乎免费

---

### 阅读 Markdown

```md
# 井号作为标题
Markdown 使用的标记不太影响阅读，甚至还能辅助阅读。  
*星号*指示**重点**，
- 短横杠则是列表中的一条
- 反引号标记`代码`
1. 数字给列表排序
2. [文本](www.可以嵌入链接.com)
```

---

### 编辑 Markdown

`.docx` 需要 Office  
需要在工具面板和文本间切换  
还有兼容问题（MS Word、Pages、LibreOffice……）
`.rtf` 纯文本下难以编写
图形编辑器也需要使用工具面板  
`.md` 可用任何编辑器，纯文本编写

---

## 使用场景

因其易编辑、效果好、导出方便的特性
Markdown 适用于多种生活场景

---

### 内容创作

只需打字即可完成内容和排版，
无需点击功能图标或学习快捷键
适合专注内容的普通写作

---

### 笔记

编写简便，附加排版，无需额外配置
纯文本，体积小，何时何地何设备都可编辑
适合快速且精致的笔记和备忘录

---

### 网络博客

除了内容创作上的便利，
Markdown 原生支持 HTML 转换，还可导出为多种格式
适合网络博客的写作

---

### Markdown 主要痛点

- 几乎无法完成高级排版任务

    论文、书籍之类还是要交给
    Word、LaTex、Typst 等专业工具

- 需要浏览器或专门软件渲染

    不同工具的渲染结果可能不同

- 种类繁多，额外语法可能搞混

    原版、GFM、Pandoc、Julia……

---

## Markdown 工具箱

编辑、渲染、导出、转换、扩展……

本文不会介绍
需要用户使用 HTML、CSS、JS 等的高级操作，
因为它们偏离 Markdown 设计较远

---

### 教程 & 文档

- [官中教程](https://markdown.com.cn)
- [英文教程](https://www.markdownguide.org)
- [知乎教程 by 一个普通程序员的成长之路](https://zhuanlan.zhihu.com/p/261016461)
- [知乎系列教程 by 远怀学堂](https://zhuanlan.zhihu.com/p/110205321)
- 各个工具的文档
- ……

---

### 编辑器 & 笔记软件

Markdown 编辑器除了基础的编辑，
大都有语法高亮、实时预览、转换导出等功能
有些还整合了笔记管理与同步

---

#### [MarkText](https://github.com/marktext/marktext/blob/develop/docs/i18n/zh_cn.md#readme)

- 开源免费（MIT）
- 易上手
- 支持 Windows、macOS 和 Linux
- 支持所见即所得
- 可导出为 PDF 和 HTML
- 支持 LaTex 数学，Mermaid 图表和更多扩展
- 支持自定义 CSS 主题
- 无插件

---

#### [Visual Studio Code (VSC)](https://code.visualstudio.com/download)

- 开源免费（MIT）
- 易上手，有汉化插件，插件功能强大
- 支持 Windows、macOS 和 Linux，有网页版
- 自带一定 MD 支持，也可以使用 MD 插件实现各类功能

---

#### [Neovim](https://github.com/neovim/neovim) / [Vim](https://github.com/vim/vim)

- 开源免费（Apache 2.0 / VIM ）
- 较难上手，需配置
- 支持 Windows、macOS 和 Linux，移动端则较难使用
- 支持高度自定义
- 插件丰富，功能强大

---

#### [Typora](https://typora.io)

- 付费（买断制，15天试用）
- 易上手，简约精致
- 支持 Windows、macOS 和 Linux
- 支持所见即所得，LaTex 数学，Mermaid 图表和更多扩展
- 支持自定义 CSS 主题
- 无插件

---

#### [Obsidian](https://obsidian.md)（笔记软件）

- 开源，免费+增值（Freemium），增值部分主要为商用证书和云存储服务
- 易上手，有双向链接和独特的关系图功能
- 支持 Windows、macOS、Linux、iOS 和 安卓
- 支持所见即所得，LaTex 数学和 Callout
- 支持插件
- 可导出为 PDF 等格式
- 使用 `.md` 而非独有格式储存文件，默认为本地存储

---

#### [Joplin](https://joplinapp.org/cn/)（笔记软件）

- 开源免费（AGPL-3.0）
- 易上手，内置一定的云存储支持（OneDrive 等）
- 支持 Windows、macOS、Linux、iOS 和 安卓
- 支持所见即所得，LaTex 数学和 Mermaid 图表
- 支持插件
- 默认本地存储，使用独有文件格式，但可导出为 MD、PDF 等格式

---

### 幻灯片 / 演示文稿

Markdown 也可用于创建美观的幻灯片
相较于 PPT 等 Office 工具，
Markdown 幻灯片通常功能较少，但制作简单

---

#### [Marp](https://marp.app)

- 开源免费（MIT）
- 易上手，纯 MD 和少量 HTML（注释）即可
- 支持 Windows、macOS、Linux，有 CLI 和 VSC 插件
- 需要 Node.js
- 可导出为 PDF、HTML、PNG、JEPG 和 PPTX
- 支持自定义 CSS 主题，实时预览和转场动画（需要 Chrome 内核浏览器）

---

![bg](assets/marp-ah.gif)

