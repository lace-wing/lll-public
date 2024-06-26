#import "@preview/ilm:1.1.0": *
#import "@preview/rubby:0.10.1": get-ruby

#set document(
	title: [守夜人],
	author: "余光中"
)

#let r = get-ruby(
	size: 0.5em,
	dy: 1.2pt,
	alignment: "center"
)

#let ed-note-date = datetime(
	year: 2024,
	month: 5,
	day: 4
)

#let set-en(body) = {
	set text(lang: "en", size: 18pt)
	set par(hanging-indent: 1em)
	show par: set block(spacing: 0.74em)
	show emph: set text(
		font: "Baskerville",
	)
	body
}
#let set-zh(body) = {
	set text(lang: "zh", size: 18pt)
	set par(hanging-indent: 0em)
	show par: set block(spacing: 1em)
	show emph: set text(
		font: "Kaiti SC",
		style: "normal"
	)
	body
}

#let ld = h(2em)
#let hg = h(1em)

#let e-en(body) = {
	show emph: set text(
		font: "Baskerville",
	)
	emph(body)
}
#let e-zh(body) = {
	show emph: set text(
		font: "Kaiti SC",
		style: "normal"
	)
	emph(body)
}

#let s(body) = strong(body)

#let note(body) = {
	set text(size: 1em * 0.75, weight: "thin")
	body
}

#set text(
	font: (
		"Times New Roman",
		"Songti SC",
	),
	size: 12pt,
)

#show heading: it => {
	if not it.has("label") {
		it
		v(0.5em)
		return
	}
	it
	let hds = query(heading).filter(h => h.has("label")).filter(h => h != it)
	let has-alt = false
	for hd in hds {
		set text(size: 12pt, weight: "light")
		if hd.label == it.label {
			if not has-alt {
				v(-0.2em)
			}
			if has-alt {
				[$space.med$|$space.med$]
			}
			link(hd.location())[#hd.body]
			has-alt = true
		}
	}
	v(0.5em)
}

#set par(justify: false)

#show link: set text(fill: blue.darken(33%))

#show outline: it => {
	set text(weight: "light")
	it
}
#let ol-colors = (
	green.darken(70%),
	blue.darken(70%)
)
#let ol-prev = state("ol-prev", [])
#let ol-count = counter(<ct:ol>)
#show outline.entry: e => context {
	if not e.element.has("label") {
		return e
	}
	let prev = ol-prev.get()
	let prev-lb = prev.at("element", default: []).at("label", default: [])
	if e.element.label != prev-lb {
		ol-count.step()
	}
	context {
		set text(fill: ol-colors.at(calc.rem(..ol-count.get(), ol-colors.len())))
		e
	}
} + ol-prev.update(e)

#show footnote.entry: set text(size: 12pt)

//SEC UTF art cover page
#[
	#set page(margin: -2em) // max 26 zh char
	#show: set-zh
	#let art-color = maroon.darken(15%)
	#let name-color = red.darken(45%)
	#let role-color = yellow.darken(60%)
	#set text(
		font: (
			"MonaspiceRn NF",
			"Kaiti SC"
		),
		size: 24pt,
		fill: white.darken(15%),
	)
	#show emph: set text(
		fill: name-color,
		weight: "extralight",
		stroke: name-color+1.25pt,
		font: (
			"MonaspiceRn NF",
			"Kaiti SC"
		),
		style: "oblique"
	)
	#show strong: set text(
		fill: art-color,
		weight: "extralight",
		stroke: art-color+1.25pt
	)
	#let p(body) = text(
		fill: role-color,
		weight: "extralight",
		stroke: role-color
	)[#body]

	#place(center+horizon)[
		#grid(
			rows: (0.98em, ) * 36,
			align: center+horizon,
			stroke: none,
			gutter: -0pt,
			[座意志之塔的每一根神经猛撼着而且绝望地啸着而铁钉的齿],
			[紧紧咬着铁臂的手紧紧握着严肃的静于*是*我的灵魂也醒了我],
			[知道既渡的我将异于未渡的*我我知道彼岸的我不能复*原为此],
			[岸的我但命运自神秘的一点*伸*过来一千条欢迎的臂*我*必须渡],
			[河太上无情古战场的浪子啊*你*没什么往事*没*有一星*星*新大陆],
			[太新没有你的往事往事在落日以西唉以西*寂*寞是一张单人床],
			[向成人说童话是白天使们的*职业我是头颅悬价的刺客*来自黑],
			[帷以外或者你坚持在户外歌唱在零下的冬*季*当咳嗽成为流行],
			[的语言而且安全一千个故事是一*个*故事那*主*题永远是一个主],
			[题永远是一个羞耻和荣誉当我说中*国*时我*只*是说有这么一个],
			[人像我像他像你五十*年*后你将在博物馆看*见*这尊黑凛凛的巨],
			[兽吐完喉*中的敌意膛中的恨在火狱*和烟*网呼*痛和呼救之后搁],
			[浅在历史无助*的*岸边在*半*世纪在半世纪之后而且不了解在半],
			[世纪半世纪之*前*一分钟*的疯狂比*五十年更长我的敌人是夜不],
			[是任一只鼠*在*我们这*时*代每一*枝*笔是一个例外每一枝避雷针],
			[都相信敢于*应*战的*不*死于*战*争*我*希望这女孩的回忆比我的要],
			[美丽传说*北方*有*一*首*民*歌只*有*黄河的肺活*量*能唱从青海到黄],
			[海风也听见*沙*也听见那*海*棠*究*竟是外伤还*是*内伤再也分不清],
			[全睡着了吧*下*面那世界连*雨*声也不再陪我*小*时候乡愁是一枚],
			[小小的邮票*我*在这头母*亲*在*那*头茫然握着*听*筒断了一截断了],
			[的脐带握着*要*拨哪*个号*码呢每*一粒*晴天*的*露*珠*每一粒阴天的],
			[雨珠分手的日子每一粒牵挂在心头的念*珠*串*成*有始有终的这],
			[一条项链只风吹星光颤不休剩我与永*恒*拔河黄*河*西来大江东],
			[去此外五千年都已沉寂真的就是吗烛*啊*我问你*一*阵风过你轻],
			[轻的摇头有意无意地像在说否无意*有*意地又像在*说*是怎么还],
			[没有停啊从传说落到了现在从霏*霏*落到了湃湃从檐*漏*落到了],
			[江海最后的_守夜人_守最后一盏*灯*只为撑一幢倾斜的巨*影*做梦],
			[我没有空更没有酣睡的权利有一面灵魂还没有收起谁的旗子],
			[~~I know _The_ man across can never come back],
			[~Let _Night_ and Death on the border of dark],
			[The last _Watchman_ by the last lamp to prop a],
			[穆旦李金发徐志摩郭沫若卞之琳_余光中_艾青#p[著]胡适#p[译]林徽因],
			[#set text(cjk-latin-spacing: none)
			CricketBeeMothButterfly#emph[Lacewing]Fly#p[编]Ant#p[排]Wasp],
			[意丹希瑞西马泰阿韩#p[中]日#p[英]印荷法德越俄葡挪芬匈捷保爱斯],
			[本书仅用于个人学习研究或者交流不作商业用途非正文部分],
			[仅代表编者非作者意见所载正文的相应权利均属于原权利人],
		)
	]
]

/*
//SEC cover page
#pagebreak()
#show: set-zh

#grid(
	rows: (2fr, 1fr),
	grid(
		columns: (3fr, 1fr),
		[
			#text(size: 24pt)[余光中] 著$space.hair$译
			#v(2em)
			#set text(weight: "light", fill: black.lighten(33%))
			有这么一个人：像我像他像你 \
			#show: set-en
			Such as myself and you and him.
		],
		[
			#v(4em)
			#align(right)[
				#set par(leading: 0.4em)
				#text(
					size: 128pt,
					font: "Xingkai SC",
					weight: "bold",
					fill: red.darken(50%)
				)[守 \ 夜 \ 人]
			]
		],
	),
	[
		#align(right)[
			#show: set-en
			#text(
				size: 32pt,
				font: "MonaspiceRn NF",
				weight: "bold",
				fill: yellow.darken(50%)
			)[The Night Watchman]
		]
		#v(4em)
		#align(center)[
			中｜英
		]
	],
)
*/

//SEC disclaimer
#set heading(outlined: false)
#pagebreak()
#show: set-zh
#set text(size: 14pt)

= 免责声明
本书仅用于个人学习、研究或者交流，不作商业用途；所载正文的相应权利均属于原权利人；如权利人认为不妥，请#link("mailto:lycrlsu01@gmail.com")[电邮]说明，本用户随即暂停公开发布此书。

本书的序语、注释等非正文部分仅代表编者意见，不代表作者意见。

= 公开协议
除非注明，本书及其源码的非正文部分，即不属于原权利人的部分，在#link("https://creativecommons.org/licenses/by/4.0/")[CC-BY 4.0]协议下公开。

#place(
	left+bottom,
	dy: -5%
)[
	#block(
		width: 6em,
		height: 4em
	)[
		#set align(center)
		#grid(
			columns: (6em, 6em),
			rows: (1fr, ) * 3,
			[书本名], [*守夜人*],
			[著译者], [*余光中*],
			[编排者], [*Lacewing*]
		)
	]
]

//SEC outline

#pagebreak()
#show: set-zh
#set heading(outlined: true)
#outline(title: [目录], depth: 1)

//TODO separate entries by sections (h1)

//SEC editor's note
#pagebreak()
#show: set-zh

= 编者序语

#set text(size: 14pt)

#ld 为什么花时间把别人已经出了书的作品再编一次？刚开始，这只是我一时兴起，想用自己喜欢的诗人的作品练习Typst罢了：中文诗作，由作者自己翻译成了英文，我再编排出来；这岂不是华文与英文文学、中英翻译和排版都有所涉及？我恰好对这三个领域感兴趣，便做了。这也是正文按中英配对，两面相接的原因。

#ld 至于正在读本文的你呢？如果你恰好对余光中的诗，或者中译英的工作感兴趣的话，那是再好不过；我们可一同品味作者独特的视角（有他这样经历且写成诗的人可不多）和他在翻译自己作品时的思考。若是来看Typst的排版功能，我恐怕得为此书打上“仅供参考”的标签——此前我只简单用Typst排过几篇论文，也未受过任何专业排版训练，更没有什么拿得出手的作品；且算作业余人自作自乐吧。

#ld 没有激起你继续阅读的欲望？还请在此页稍作休息，容我念叨一会。从学前到高中，我都不觉得自己是什么有“文学气息”的人，每日看的都是科技政经，从未想过涉猎语文艺术；至于中国学生必经的“语文”之科目？我从来都不是个“好学生”，不愿意按照模版去解读“作者的深意”，自然没有驱使我进一步学习的正反馈。

#ld 此间虽偶有我愿做文学鉴赏或创作的机会，都没起显著的效果。后来我得大把空闲时间思考时，读与写的念头才回到脑中。作为一名“刚刚接触互联网的00后少年”，长时间钻在物理化学课本中，有太多的问题从来没有被回答；既“悟以往之不谏”，却不知“来者之可追”，也许这是青春期常见的问题？只知当时我有多么烦闷和困扰，直到我重新自愿拿起文学读物：网络博客、经典小说、古今诗歌……直到我开始做文学相关的工作：文学分析、中英翻译、文档写作……“春风化雨”，我会用这个词形容这一段经历，正如电影《死亡诗社》也被译为此名。

#ld 有太多问题科学还要很多年才能解答，可惜我不能在此间呆太久，没法一直等待。而文学告诉我为何提出问题，且予我不解答问题的勇气。

#ld 虽然余光中来自我不熟悉的时代，但许多他面临过的问题正困扰着我和其他很多相同或不同时代的人。不妨在闲时打开某一电子文档（或更传统一些，翻开某一纸质文档），读读别人的思想，写写自己的评论；或许就这一本？

#align(right)[Lacewing \ #ed-note-date.display()]

//SEC special thanks
#pagebreak()
#show: set-zh

= 特别感谢

#set text(size: 14pt)

== 12公里#note[（原蓝天作文网）]
我文学创作的起点。

=== 石老师
我当时的语文老师，鼓励我尝试文学创作。

== Ms. Lim
我后来的中华文学老师，带我领略文学的魅力。
#blockquote[复活在我，生命也在我]

== tModLoader 社区
我翻译工作的第一站，其对本地化的重视让我倍受鼓舞。

=== 万象元素#note[（昵称）]
支持我对翻译的初次尝试，也为我打开了另一扇门。

=== 裙形态#note[（昵称）和] 棱镜#note[（昵称）]
引我了解LaTex和Markdown，以及排版语言的世界。

=== 夜谷紫幽#note[（昵称）]
我排版与文档编写之旅上的同伴，相互答疑解惑。

#pagebreak()

#[
	#set align(center+horizon)
	#show heading: it => text(size: 1em * 2)[#it]

	== 余光中
	感谢余光中先生，你的创作带我走出低落的时刻，拂开障目一叶。

	#v(10%)

	== Typst
	感谢Typst，你精巧的功能和热情的社区是我编排此书的动力和助力。
]

//SEC main body

//TODO compare ed 1992 with ed 2018, compile into a complete version

//TEMP blank page for 2-page PDF reading
#pagebreak()

#pagebreak()
#set page(numbering: "1")
#show: set-zh

== 西螺大桥
<h:hsilo-bridge>

#grid(
	columns: (1.23fr, 1.12fr),
	[
		#r[chù][矗]然，钢的灵魂醒着

		严肃的静#r[kēng][铿]#r[qiāng][锵]着

		\

		西螺平原的海风猛撼着这座

		意志之塔的每一根神经

		猛撼着，而且绝望地啸着

		而铁钉的齿紧紧咬着， \ 铁臂的手紧紧握着

		严肃的静

		于是，我的灵魂也醒了， \ 我知道

		既渡的我将异于

		未渡的我，我知道

		彼岸的我不能复原为

		此岸的我

		但命运自神秘的一点伸过来

		一千条欢迎的臂，我必须渡河
	],
	[
		面临通向另一个世界的

		走廊，我微微地颤抖

		但西螺平原壮阔的风

		迎面扑来，告我以海在彼端

		我微微地颤抖，但是我

		必须渡河

		\

		矗立着，庞大的沉默

		醒着，钢的灵魂
	]
)

#pagebreak()
#show: set-en

== Hsilo Bridge
<h:hsilo-bridge>

#set text(size: 17pt)

Loomingly, the soul of steel remains awake.

Serious silence clangs.

\

Over the Hsilo Plain sea winds wildly shake

This design of strength, this scheme of beauty; they shake

Every nerve of this tower of will,

Howling and yelling desperately.

Still the teeth of nails bite, the claws of iron rails clench

A serious silence.

\

Then my soul awakes; I know

I shall be different once across

From what on this side I am; I know

The man across can never come back

To the man before the crossing.

Yet Fate from a mysterious center radiates

A thousand arms to greet me; I must cross the bridge.

\

Facing the corridor to another world,

I tremble a little.

But the raw wind over the Hsilo Plain

Blows against me with the tidings

That on the other side is the sea.

I tremble a little, but I

must cross the bridge.

\

And tall looms the massive silence,

And awake is the soul of steel.

#pagebreak()
#show: set-zh

== 七层下
<h:seven-layers-beneath>

#set text(size: 16pt)

#grid(
	columns: (1.2fr, 1fr),
	[
		一时松风退涛，落日在内战以西

		残雪兀自封锁着边界

		秃柯瘦成听觉的神经

		肃然的寒气中，灌木丛在倾听

		\

		日落时，坏脾气的乌鸦

		在那边的桦树林中咒骂

		骂米德将军断剑的雕像

		百里内，惊动多少耳朵

		\

		怪石如颜，鬼面之后有鬼面

		不久冷雾泛起，夜空下

		露滴侵蚀铁炮的骨髓

		锈青了的寂灭中，爬着霉绿
		
		\
		
		内战之后，血斑皆酣然

		酣然，铜号，酣然，失蹄的嘶马

		内战之后，一整幅战场

		在静听一只迟归的鸦
	],
	[
		天狼在#r[zhì|dié][雉|堞]的齿隙升起

		累积的时间感，全部的重量

		向肩胛骨最酸处压下

		夜色泻下，沿着谁的冰颊

		\

		踏。踏七层死去的秋

		七层枯脆在履底悲泣

		踏碎一些心形的图案

		一些多情的执着，一些徒然

		\

		太上无情。古战场的浪子啊

		你没什么往事，没有一星星

		新大陆太新，没有你的往事

		往事在落日以西，唉，以西

		\

		#align(right)[—— _盖提斯堡战场魔鬼穴_]
	],
)

#pagebreak()
#show: set-en

== Seven Layers Beneath
<h:seven-layers-beneath>

#set text(size: 14pt)

The wind now ebbs among the pines. The sun sets

West of the Civil War. Only snow garrisons the frontier.

Thin are the bald branches, like starved nerves of the ear.

In the chilled hush the shrubs are listening.

\

At sunset, the ill-tempered crow in the birch trees

Begins to curse, in dissonant blasphemies,

General Sedgwick with the broken sword.

Startled and strained are the statues ears.

\

Featured are the rocks; masks hide behind masks.

Soon the cold fog will rise, and under the biotite sky

The dews will nibble the marrow of the guns

In the rusted silence where mildew creeps.

\

After the war asleep are the stains of blood.

Mute are the bugles, must the neighing horses that shied.

After the war the vastness of a battlefield

Is listening to a lone, last crow.

\

Then Sirius rises from between teeth of battlements.

The weighty sense of Time cumulated falls

On my fatigued collar bone. Also falls

The night, slippery down my icy face.

\

Softly I tread. Softly, on seven autumn dead,

Seven layers of leaves, crisp and sobbing beneath the shoes,

Till trod and broken lie all the heart-shaped designs,

All the insistence and futilities.

\

WISDOM SURVIVES PASSION. Ah, exile roaming the battlefield,

There is no past for you, no, not a bit.

New Continent is still too new, past there's none for you.

Your past is west of the sunset, west of it.

\

#align(right)[— _Devil's Den, Gettysburg_]

#pagebreak()
#show: set-zh

== 钟乳岩
<h:smoke-hole-cavern>

#grid(
	columns: (1fr, 1fr),
	[
		史前的童贞夜咽下了我们

		无首无尾的黑暗

		生之前，死之后

		冰涧漱着细细的地下水

		\

		扪到冥川上游

		山的盲肠不通向何方

		日月都留在洞外

		谁的手中一枝电筒

		\

		拔也拔不开的深邃

		仿佛凝固的梦境

		脚下是珊瑚丛

		千盏琳琅是吊灯

		\

		石乳下降，石笋上升

		盘古的白须缓缓地长着

		千载以厘，万载一分

		升降之间虚悬着永恒
	],
	[
		永恒，永恒！缓降的石乳

		对更缓的石笋耳语：

		“何必如此匆匆地相约


		我们又何必要终于相遇

		在这石椁神秘的世纪？”

		\

		百年前，南军在洞里藏金

		向导说，更早更早以前

		戴羽绘面的红酋长

		在洞口熏炙鹿肉

		\

		岩石也有音乐啊，他说

		且扬杖击石

		向琳琳珑珑的雕塑敲起

		石器时代的流行乐

		\
	
		#align(right)[—— _西弗吉尼亚·烟洞岩_]
	]
)

#pagebreak()
#show: set-en

== Smoke Hole Cavern
<h:smoke-hole-cavern>

#set text(size: 15pt)

#grid(
	columns: (1.1fr, 1fr),
	[
		Pre-historic virgin night devours us,

		Such a headless, tailless darkness

		Before our life and after our death,

		Where, subterranean, blind, cold,

		Gargles the trickle of a stream.

		\

		We grope upstream along the Lethe

		To find the mountain's appendix lead

		Nowhere, vaguely aware the sun \ and moon

		Are left revolving somewhere outside.

		In whose hand a flashlight

		\

		In vain tries to push aside

		The impenetrability of it all,

		Where a whim-dream has fossilized

		Reefs of coral under our feet

		And candelabra overhead.

		\

		So stalactites fall and stalagmites rise:

		So slowly grow Creation's breads.

		An inch's fall, an inch's rise

		While outside, rise and fall \ the dynasties.

		Eternity's where they never meet.
	],
	[
		Eternity, eternity! The [stalactites] #footnote[原文为“stalagtites”]<ft:stalagtites>

		Whisper to the stalagmites below:

		"No hurry for us to grow and meet,

		Who knows how many centuries will pass

		In this mystery of a sarcophagus?"

		\

		A century ago the Confederates,

		The guide says, here hid their gold.

		And much, much earlier than that,

		A feathered and painted \ Indian chief

		Roasted his venison in the cave.

		\

		Rocks have their music too, he says

		And beats them up and down

		And beats them left and right

		And upon such a subtle sculpture

		Strikes up a pop tune of the \ Stone Age.

		\

		#align(right)[— _Smoke Hole Cavern, West Virginia_]
	]
)

#pagebreak()
#show: set-zh

== 当我死时
<h:when-i-am-dead>

当我死时，葬我，在长江与黄河

之间，枕我的头颅，白发盖着黑土

在中国，最美母亲的国度

我便坦然睡去，睡整张大陆

听两侧，安魂曲起自长江，黄河

两管永生的音乐，滔滔，朝东

这是最纵容最宽阔的床

让一颗心满足地睡去，满足地想

从前，一个中国的青年曾经

在冰冻的密西根向西瞭望

想望透黑夜看中国的黎明

用十七年未#r[yàn][餍]中国的眼睛

饕餮地图，从西湖到太湖

到多鹧鸪的重庆，代替回乡

#pagebreak()
#show: set-en

== When I Am Dead
<h:when-i-am-dead>

When I am dead, lay me down between the Yangtze

And the Yellow River and pillow my head

On China, white hair against black soil,

Most beautiful O most maternal of lands,

And I will sleep my soundest taking

The whole mainland of my cradle lulled

By the mother-hum that rises on both sides

From the two great rivers, two long, long songs

That on and on flow forever to the East.

This the world's most indulgent roomiest bed

Where, content, a heart pauses to rest

And recalls how, of a Michigan winter night,

A youth from China used to keep

Intense watch towards the East, trying

To pierce his look through darkness for the dawn

Of China. So with hungry eyes he devoured

The map, eyes for seventeen years starved

For a glimpse of home, and like a new weaned child

He drank with one wild gulp rivers and lakes

From the mouth of Yangtze all the way up

To Poyang #footnote[鄱阳湖]<ft:poyang> and Tungt'ing #footnote[洞庭湖]<ft:tungting> and to Koko Nor #footnote[青海湖]<ft:koko-nor>

#pagebreak()
#show: set-zh

== 灰鸽子
<h:gray-pigeons>

废炮怔怔地望着远方

灰鸽子在草地上散步

含含糊糊的一种

诉苦，嘀咕嘀咕嘀咕

一整个下午的念珠

数来数去未数清

海的那边一定

有一个人在念我

有一片唇在惦我

有一张嘴在呵我

呵痒下午的耳朵

下午敏感的耳朵

仰起，在玉蜀黍田里

盛好几英里的寂寞

向晚的日色，冰冰

弥满珍珠色的云层

灰鸽子在废炮下散步

一种含含糊糊的诉苦

含含糊糊在延续

#pagebreak()
#show: set-en

== Gray Pigeons
<h:gray-pigeons>

The old guns muse and look afar.

Gray pigeons saunter on the lawn;

An obscure, subdued complaint

Now and then is heard to coo and croon.

On and on through the afternoon

A rosary's told and told and told,

The secrets of beads still unknown.

I have a hunch across the sea

There's someone murmuring my name,

Some unseen lips tickling my ear.

Itchy's the ear of afternoon;

The sensitive ear of early dusk

Turns up, with fields full of corn,

And holds a loneliness for miles.

The slow sun does more to chill than cheer,

Dimmed further bt pearly clouds.

Under the old guns gray pigeons moan,

A complaint most inarticulate,

Which seems to stammer and hesitate

Off and on through the afternoon.

#pagebreak()
#show: set-zh

== 单人床
<h:the-single-bed>

月是盲人的一只眼睛

怒瞰着夜，透过蓬松的云

#r[yín][狺]狺的风追过去

这黑穹！比绝望更远，比梦更高

要冻成爱斯基摩的冰屋

中国比太阳更陌生，更陌生，今夜

家人无信，朋友皆远离

没有谁记得谁的地址

寂寞是一张单人床

向夜的四垠无限地延伸

我睡在月之下，草之上，枕着空无，枕着

一种渺渺茫茫的悲辛，而风

依然在吹着，吹黑暗成冰

吹胃中的激昂成灰烬，于是

有畸形的鸦，一只丑于一只

自我的眼中，口中，#r[chuáng][幢]幢然飞起

#pagebreak()
#show: set-en

== The Single Bed
<h:the-single-bed>

The moon is a blind man's eye that glowers

At the night through shaggy, unkempt clouds,

Hounded by packs of growling winds.

Look, look up at the firmament

That's freezing into an igloo roof,

Farther than despair, loftier than a dream!

China is more remote than the sun tonight,

When family is remote and friends apart,

And addresses, once so dear, are all forgot.

Loneliness is a single bed

That endlessly extends and extends

Towards the four horizons of the night.

Between the moon and grass I sleep, pillowed

Upon a sorrow undefined, while the wind

Is blowing darkness into a block of ice

And into ashes the passion in my guts,

From which deformed crows, one uglier than the other,

Arise, winging and squawking from my mouth and eyes.

#pagebreak()
#show: set-zh

== 黑天使
<h:the-black-angel>

#set text(size: 16pt)

#grid(
	columns: (1fr, 0.18fr, 1fr),
	rows: (1fr, 0.3fr),
	[
		黑天使从夜的脐孔里

		#hg 飞至，从月落乌啼

		#hg 的天空，当狼群咀嚼

		落月，鼠群窸窸窣窣噬尽

		\

		满天的星屑，我就是

		#hg 不详天使，迅疾

		#hg 扑至，一封死亡电报

		猛然捶打你闭门不醒

		\

		的恶魔，我就是黑天使

		#hg 白天使中我已被

		#hg 除籍，翻开任何

		黑名单，赫然，你不会看不见

		\

		我的名字，叫黑天使，我就是

		#hg 夜巡的黑鹰

		#hg 最黑最暗的

		夜里，我瞥见最善伪装的
	],
	[],
	[
		罪恶，且在他头顶盘旋

		#hg 等垂毙的前夕

		#hg 作俯冲的一击

		我就是黑天使，我永远

		\

		独羽逆航，在雨上，电上

		#hg 向成人说童话

		#hg 是白天使们

		的职业，我是头颅悬价

		\

		的刺客，来自黑帷以外，来自

		#hg 夜的盲哑的深处

		#hg 来自黪黪的帝国

		的墨墨京都，黑天使，我就是
	],
	grid.cell(
		colspan: 3,
		align(right)[
			#note[
				_自注：写成后，才发现这首《黑天使》是首尾相衔的联锁体，段与段之间不可能读断。Emily Dickinson 的 #e-en[_I Like to See It Lap the Miles_] 近于此体。_
			]
		]
	),
)

#pagebreak()
#show: set-en

== The Black Angel
<h:the-black-angel>

#set text(size: 14pt)

#grid(
	columns: (1fr, 0.04fr, 1fr),
	[
		Swift swoops down the Black Angel

		From night's innermost navel,

		From a sky of setting moon and crows

		When wolves are tearing the crescent

		And swarms of rats are nibbling at

		\

		The remaining star-crumbs. I am

		The Angel of Ill Omen

		Who descends at the worst moment

		With an obituary telegram

		To bang your door and call you up

		\

		From amidst your \ nightmares and sweat.

		Among all angels alone I'm black,

		An outlaw to every angel white,

		And on every black list, long or short,

		Most conspicuous you never miss

		\

		My name, marked \ BLACK ANGEL. I am

		The black angel cruising at night

		Through the darkest, the most opaque

		Blindness of a moonless, \ dawnless night

		I never discovered \ the best camouflaged
	],
	[],
	[
		Of evils but will circle over its head

		To watch for its last breath of sin

		And rush all of a sudden down

		Upon its death long overdue,

		For I am the Black Angel \ who never flies

		\

		But by himself through \ lightnings and rain.

		To tell the grown-ups fairy tales,

		To tell them that God never fails,

		The white angels are \ more than well-paid.

		But I am, with a high price \ on my head,

		\

		The Arch-Assassin none can stop

		From breaking through the draperies

		And rings of guards, \ from where the night

		Is at its most deaf and blind, \ from outside

		The Dark Tower overhanging \ the Dark Lord:

		\

		Where the Black Angel strikes, I strike.
	]
)

#pagebreak()
#show: set-zh

== 有一只死鸟
<h:there-was-a-dead-bird>

#grid(
	columns: (1fr, 1.07fr),
	[
		冬至以后，春分以前

		那一种方言最安全？

		如果你是一只鸣禽

		美丽，而且有一身白羽

		便可以将你剥制成标本

		装饰那家博物馆， \ 栩栩如生

		拉丁文的学名下，注明

		一种鸣禽，能歌，能高翔

		罕见的品种，日趋灭亡

		或者你可以按时唱歌

		堂皇的客厅，栖你在壁上

		制造顺耳的室内乐， \ 可以乱真

		钟叩七下，你就啭七声

		顺着钟面的短针，长针 #footnote[此处并未分段]<ft:no-par-sep>
	],
	[
		或者你坚持在户外歌唱

		在零下的冬季，当咳嗽

		成为流行的语言，而且安全

		你坚持一种醒耳的高音

		向黑色的风和黑色的云

		猎枪的射程内，你拒绝闭口

		你不屑咳嗽，当冷飙

		当冷飙射进你的热喉

		杀死一只鸣禽，杀不死春天

		歌者死后，空中有间歇的回音

		或者你坚持歌唱，面对着死亡
	]
)



#pagebreak()
#show: set-en

== There Was a Dead Bird
<h:there-was-a-dead-bird>

#set text(size: 15pt)

When winter solstice's here

And vernal equinox still far,

What dialect is most safe to adopt?

If you're a warbler of a bird,

Beautiful, white all over feathered,

You'll be a taxidermist's delight

To adorn that museum, vivid as if undead.

Under the Latin name will be noted:

A song bird, swift in song and in flight,

Of rare species now, all but extinct.

Or you can sing a timely song

To earn your place in a draped room,

Perched demurely upon a wall,

And pleasing chamber music to make,

Away from the wild woodnote call.

When the clock strikes eleven,

Eleven times, then, must you chime

Under the batons of short hand and long.

Or you will insist on an outdoor song

In the chill-spell of winter when

Sneeze and cough are in tune and safe.

You insist upon an ear-piercing pitch

Against black blasts of a dark night,

No shotgun within range can silence that itch

Not to cough, but to cry in despite

Of the icy blast at your throbbing throat.

No spring is murdered by killing a bird:

A singer dies, yes, but a song never does.

The air never forgets a martyred breath.

Or you can sing on in the teeth of death.

#pagebreak()
#show: set-zh

== 致读者
<h:to-the-reader>

一千个故事是一个故事

那主题永远是一个主题

永远是一个羞耻和荣誉

当我说中国时我只是说

有这么一个人：像我像他像你

#pagebreak()
#show: set-en

== To the Reader
<h:to-the-reader>

A thousand stories make one story;

The theme forever same's the theme,

Forever the shame and the glory;

When I say China I only mean

Such as myself and you and him.

#pagebreak()
#show: set-zh

== 双人床
<h:the-double-bed>

让战争在双人床外进行

躺在你长长的斜坡上

听流弹，像一把呼啸的萤火

在你的，我的头顶窜过

窜过我的胡须和你的头发

让政变和革命在四周呐喊

至少爱情在我们的一边

至少破晓前我们很安全

当一切都不再可靠

靠在你弹性的斜坡上

今夜，即使会山崩或地震

最多跌进你低低的盆地

让旗和铜号在高原上举起

至少有六尺的韵律是我们

至少日出前你完全是我的

仍滑腻，仍柔软，仍可以烫熟

一种纯粹而精细的疯狂

让夜和死亡在黑的边境

发动永恒第一千次围城

惟我们循螺旋纹急降，天国在下

卷入你四肢美丽的漩涡

#pagebreak()
#show: set-en

== The Double Bed
<h:the-double-bed>

Let war rage on beyond the double bed

As I lie on the length of your slope

And hear the straying bullets

Like a whistling swarm of glow-worms

Swish by over your head and mine

And through your hair and through my beard.

On all sides let revolutions growl,

Love at least is on our side.

We'll be safe at least before the dawn.

When nothing is there to rely upon,

On your supple warmth I can still depend.

Tonight, let mountains topple and earth quake,

The worst is but fall down your lowly vale.

Let banners and bugles rise high on the hills,

Six feet of rhythm at least are ours,

Before sunrise at least you still are mine,

Still so sleek, so soft, so fully alive

To kindle a wildness pure and fine.

Let Night and Death on the border of darkness

Launch the thousandth siege of eternity

As we plunge whirling down, Heaven beneath,

Into the maelstrom of your limbs.

#pagebreak()
#show: set-zh

== 野炮
<h:the-field-gun>

#set text(size: 15pt)

#grid(
	columns: (1.09fr, 0.06fr, 1fr),
	[
		五十年后，你将在博物馆看见

		这尊黑凛凛的巨兽

		吐完喉中的敌意，膛中的恨

		在火狱和烟网，呼痛和呼救之后

		搁浅在历史无助的岸边

		不可解的一具尸骸，曾是恐龙

		几分可骇，和更多的可笑，可悯

		五十年后，你将在国立公园里看见

		这重吨的黑魅，灵魂涤尽骄蛮

		一个退休的屠夫，再度恢复

		古金属的好脾气和纯朴

		斑斓剥落的慈爱，冷静如僧

		五十年后，他将柔驯地蹲伏

		在健忘的草地上，任鸽群

		任无知的鸽群在四周沉吟

		任孩子们合唱，骑在炮管上，幻想

		胯下是长颈鹿，是王子的白马

		任年轻的母亲以他为背景

		在橄榄树下准备野餐

		而且微笑，向快门与镜头 @ft:no-par-sep
	],
	[],
	[
		在半世纪，在半世纪之后

		而且不了解，在半世纪，在半世纪之前

		一分钟的疯狂比五十年更长

		当暴怒的巨灵啊你的铁臂举起

		众神掩面，天使垂泪

		也不可劝解，一寸，也不可挽回

		铁臂举起，成一个亵渎的斜度

		长膛正热，毒咒在膛中沸滚

		你的斥骂洪亮一如真理

		浓烟中，春泥飞溅如雨

		你大声呵斥，掀起草皮

		天痴，地#r[ǎi][騃] #footnote[假借为“佁”]<ft:rare-horse-ai>，你大声喝止

		烂肺的呛咳，烂眼的呻吟

		母亲的低泣，孤儿合唱队的啼声
	]
)

#pagebreak()
#show: set-en

== The Field Gun
<h:the-field-gun>

#set text(size: 13pt)

After fifty years in a museum you shall see

This bullying black beast,

Done with the curse in his throat, malice in his breast,

And stranded, after the infernal fire and smoke,

The involuntary yelps for help and pain,

Full on history's helpless shore,

A body, unintelligible, of a dinosaur,

Calling more for wonder and pity than for dread.

After fifty years you'll see him in a national park,

A dark massive monster, cleansed of soul's arrogance,

A retired butcher who has long regained

The good humor and unobtrusiveness of old bronze,

Quiet as a monk now in his kindly rustiness.

After fifty years he'll demurely squat

There on the forgetful lawn with the doves,

The unmindful doves cooing in the neighborhood

And festive children astride the barrel imagining

They're riding a giraffe or the steed of a prince.

So young mothers trustingly will lean on him

And prepare their picnics under some olive tree,

Smiling at the camera the unsuspicious smile,

After fifty years, yes, after fifty years,

And never imagine that only fifty years ago

A moment's madness dragged longer than all the centuries,

When with raving monstrosity his lurid arm was raised

In the face of gods and all the tearful angels,

Not an inch to relent or to be dissuaded,

When the savage arm was raised to a blaspheming slant,

Mouth-belching, the curse about to burst.

Your profanity blasted no less than truth,

Amidst the smothering smoke spring mun splashed like rain,

Your flashing lectures turned up acres of turf,

Sky stupefied, earth stunned, and faint between your railings came

Coughs of rotten lungs, moans of rotten eyes,

Mothers sobbing, orphans wailing in unisons.

#pagebreak()
#show: set-zh

== 九命猫
<h:a-cat-with-nine-lives>

我的敌人是夜，不是任一只鼠

一种要染黑一切的企图

企图噬尽所有的光

被祟的空间，徐徐，十二响

当古钟悚悚敲起

敲响午夜的心脏，忽然有风

宽大的僧袖拂脸过处

星象叮叮当当全被扫落，像死亡

一口气吹熄生日蛋糕的蜡烛

但死亡不能将我全吹熄

九条命，维持九盏灯

一盏灯投九重影，照我

读一部读不完的书

黑暗是一部醒目的书

从封面到封底，我独自读

#pagebreak()
#show: set-en

== A Cat with Nine Lives
<h:a-cat-with-nine-lives>

My enemy is not any of the rats, but the whole night,

An attempt to paint everything black

And nibble at the one remaining light.

In the haunted space, listen, twelve strokes

The ancient bronze bell slowly strikes

At the startled heart of midnight, when a sudden blast

With the immensity of a monk's sleeve flaps my face

And down come tinkling the stars, as Death

Puffs out all the birthday-cake candles with one breath.

But Death can't put me out all at once:

My nine lives keep burning nine lamps,

Each casting nine shadows. So I

Am reading a book without an end.

Darkness is an engaging book

I purr alone, from cover to cover.

#pagebreak()
#show: set-zh

== 自塑
<h:self-sculpture>

#grid(
	columns: (1.1fr, 0.1fr, 1.1fr),
	[
		如何你立在旋风的中心

		看疯狂的中国在风中疾转

		须发飞扬，指着气候的方向

		以一种痛楚的冷静

		时间是风，能吹人年轻

		能吹人年老，将须发吹掉

		如何在旋风的中心，你立着

		立成一座独立的塑像

		在不为诗人塑像的国度

		像座，是一部坚厚的书

		一部分量够重的灵感

		不随旋风的旋转而旋转

		如何你在无坐标的空间

		因立得够久成一个定点 @ft:no-par-sep
	],[],
	[
		如何，因为你立得够久

		让风一件件吹走衣冠

		让风将一切的装饰吹走

		但你仍丰满，仍不够瘦

		如何让中国像疯狂的石匠

		奋锤敲凿你切身的痛楚

		敲落虚荣，敲落怯懦

		敲落一鳞鳞多余的肌肤

		露出瘦瘦的灵魂和净骨

		被旋风磨成一架珊瑚。如何

		中国将你毁坏，亦将你完成

		像一个苍老，愤怒的石匠
	]
)

#pagebreak()
#show: set-en

== Self-Sculpture
<h:self-sculpture>

#set text(size: 17pt)

How you stand out amidst the whirlwind

And see how madly China whirls around,

Your hair blown where the weather blows

And where the weathercock crows,

With an agonized soberness.

Time is the wind that blows you young

And blows you old and blows off your brows and hair.

How amidst the whirlwind you stand there,

Defiant, a statue of independence,

In a nation that builds no statue for poets:

The pedestal, a massive enough book,

An inspiration that never has shook

Or turned when the whirlwind turned.

How you'd become, in the windy void,

A fixed point because long have you stood.

How, because long have you withstood,

Your garments, one by one, are blown away

And blown everything that adorns,

But that comely gauntness is yet to come.

How you'd let China, a stone-cutter gone mad,

Wildly hammer at your agonies,

At all the vanities and cowardliness

Till flake after flake your flesh goes

And through the skeleton your soul glows:

A craggy coral sculptured by the wind.

How China, an aged but ruthless sculptor.

Chops you down into shape.

#pagebreak()
#show: set-zh

== 狗尾草
<h:green-bristlegrass>

#set text(size: 17pt)

总之最后谁也辩不过坟墓

死亡，是惟一的永久地址

譬如吊客散后，殡仪馆的后门

朝南，又怎样？

朝北，又怎样？

那柩车总显出要远行的样子

总之谁也拗不过这桩事情

至于不朽云云

或者仅仅是一种暗语，为了夜行

灵，或者不灵，相信，或者不相信

最后呢谁也不比狗尾草更高

除非名字上升，向星象去看齐

去参加里尔克#footnote[莱纳·玛利亚·里尔克，诗人]<ft:rilke>或者李白

#h(10em) 此外

一切都留在草下

名字归名字，#r[dú][髑]髅归髑髅

星归星，蚯蚓归蚯蚓

夜空下，如果有谁呼唤

上面，有一种光

下面，有一只蟋蟀

隐隐像要回答

#pagebreak()
#show: set-en

== Green Bristlegrass
<h:green-bristlegrass>

Who, after all, can argue with the grave

When death is the only permanent address?

When all the condolers have left,

What if the undertaker's back door

Faces the south or the north?

The coach looks always ready for exile,

And none can dissuade it from the trip.

The so-called immortality

May prove nothing but an empty password

For whoever must travel at night,

Even if it works and convinces.

None ends up taller than the bristlegrass

Unless his name soars to the stars

To join Li Po #footnote[李白（旧英音）]<ft:li-po> or Rilke

#h(9em) while the rest

Is left behind beneath the grass.

Keep names to names, dust to dust,

Stars to stars, earthworms to earthworms.

If a voice calls under the night sky,

Who, indeed, is going to answer

Except a glimmer from above

Or a cricket from below?

#pagebreak()
#show: set-zh

== 如果远方有战争
<h:if-theres-a-war-raging-afar>

#set text(size: 16pt)

#grid(
	columns: (1.1fr, 0.08fr, 1fr),
	[
		如果远方有战争，我应该掩耳

		或是该坐起来，惭愧地倾听？

		应该掩鼻，或应该深呼吸

		难闻的焦味？#hg 我的耳朵应该

		听你喘息着爱情或是听榴弹

		宣扬真理？#hg 格言，勋章，补给

		能不能喂饱无餍的死亡？

		如果有战争煎一个民族，在远方

		有战车狠狠地犁过春泥

		有婴孩在号啕，向母亲的尸体

		号啕一个盲哑的明天

		如果有尼姑在火葬自己

		寡欲的脂肪炙响绝望

		烧曲的四肢抱住涅槃

		为了一种无效的手势。#hg 如果

		我们在床上，他们在战场

		在铁丝网上播种着和平

		我应该惶恐，或是该庆幸

		庆幸是做爱，不是肉搏

		是你的裸体在怀里，不是敌人 @ft:no-par-sep
	], [],
	[
		如果远方有战争，\ 而我们在远方

		你是慈悲的天使，白羽无疵

		你俯身在病床，看我在床上

		缺手，缺脚，缺眼，缺乏性别

		在一所血腥的战地医院

		如果远方有战争啊这样的战争

		情人，如果我们在远方
	]
)

#pagebreak()
#show: set-en

== If There's a War Raging Afar
<h:if-theres-a-war-raging-afar>

#set text(size: 17pt)

If there's a war raging afar, shall I stop my ear

Or shall I sit up and listen in shame?

Shall I stop my nose or breathe and breathe

The smothering smoke of troubled air? #hg Shall I hear

You gasp lust and love or shall I hear the howitzers

Howl their sermons of truth? #hg Mottoes, medals, widows,

Can these glut the greedy palate of Death?

If far away a war is frying a nation,

And fleets of tanks are ploughing plots in spring,

A child is crying at its mother's corpse

Of a dumb and blind and deaf tomorrow;

If a nun is squatting on her fiery bier

With famished flesh singeing a despair

And black limbs ecstatic round Nirvana

As a hopeless gesture of hope. #hg If

We are in bed, and they're in the field

Sowing peace in acres of barbed wire,

Shall I feel guilty or shall I feel glad,

Glad I'm making, not war, but love,

And in my arms writhes your nakedness, not the foe's?

If afar there rages a war, and there we are —

You a merciful angel, clad all in white

And bent over the bed, with me in bed —

Without hand or foot or eye or without sex

In a field hospital that smells of blood.

If a war O such a war is raging afar,

My love, if right there we are.

// skipped a lot
#pagebreak()
#show: set-en

== In Praise of Hong Kong
<h:in-praise-of-hong-kong>

#set text(size: 16pt)

Just as that brave young man,

The noblest and most favored

Of all the children

Of Goddess of Democracy,

By the unbending of his spine

And the openness of his breast

Stopped the stamping tanks,

A whole clattering fleet of them,

And turned them all at once

Into confounded crabs

On the fatal street of June,

\

You are such a hero

To stand all by yourself

And face bigger tanks

Clanking with heavier treads,

Louder in your protest,

And, while the world watches by

Single-handed you resist,

Crushing down upon you,

The tank fleet of the years:

#ld 1990,

#ld 1991,

#ld 1992,

#ld 1993,

#ld 1994……

#ld until at last

#ld comes all too fast

#ld 1997.
