#import "@preview/ilm:1.1.0": *
#import "@preview/rubby:0.10.1": get-ruby

#set document(
	title: [守夜人],
	author: "余光中"
)

#let r = get-ruby(
	size: 0.4em,
	dy: 1pt,
	alignment: "center"
)

#let set-en(doc) = {
	set text(lang: "en", size: 18pt)
	set par(hanging-indent: 2em)
	show par: set block(spacing: 0.6em)
	show emph: set text(
		font: "Baskerville",

	)
	doc
}
#let set-zh(doc) = {
	set text(lang: "zh", size: 18pt)
	set par(hanging-indent: 0em)
	show par: set block(spacing: 0.7em)
	show emph: set text(
		font: "Kaiti SC",
		style: "normal"
	)
	doc
}

#set text(
	font: (
		"Times New Roman",
		"Songti SC",
	),
	size: 12pt,
)

#show heading: it => {
	if it.at("label", default: none) == none {
		it
		v(0.8em)
		return
	}
	it
	let hds = query(heading).filter(h => h.at("label", default: none) != none).filter(h => h != it)
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
	v(0.8em)
}

#set par(justify: false)

#show link: set text(fill: blue.darken(33%))

#show outline: it => {
	set text(weight: "light")
	it
}

#show: c => set-zh(c)

//SEC cover page

#grid(
	rows: (2fr, 1fr),
	grid(
		columns: (3fr, 1fr),
		[
			#text(size: 24pt)[余光中] 著·译
			#v(2em)
			#set text(weight: "light", fill: black.lighten(33%))
			有这么一个人：像我像他像你 \
			#show: c => set-en(c)
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
			#show: c => set-en(c)
			#text(
				size: 32pt,
				font: "MonaspiceRn NF",
				weight: "bold",
				fill: yellow.darken(50%)
			)[The Night Watchman]
		]
		#v(4em)
		#align(center)[
			余光中诗歌自选集 \
			中｜英
		]
	],
)

#pagebreak()

//SEC editor's note

#show: c => set-zh(c)

#heading(level: 1, outlined: false)[编者按]

我想作者一定不会介意我编写此书的。

#align(right)[#datetime.today().display()]

//SEC outline

#pagebreak()
#outline(title: [目录])

//SEC main body

#pagebreak()
#set page(numbering: "1")
#show: c => set-zh(c)

= 西螺大桥
<hsilo-bridge>

#set text(size: 18pt)

#r[chù][矗]然，钢的灵魂醒着

严肃的静#r[kēng|qiāng][铿|锵]着

\

西螺平原的海风猛撼着这座

意志之塔的每一根神经

猛撼着，而且绝望地啸着

而铁钉的齿紧紧咬着，铁臂的手紧紧握着

严肃的静

于是，我的灵魂也醒了，我知道

既渡的我将异于

未渡的我，我知道

彼岸的我不能复原为

此岸的我

但命运自神秘的一点伸过来

一千条欢迎的臂，我必须渡河

\

面临通向另一个世界的

走廊，我微微地颤抖

但西螺平原壮阔的风

迎面扑来，告我以海在彼端

我微微地颤抖，但是我

必须渡河

\

矗立着，庞大的沉默

醒着，钢的灵魂

#pagebreak()
#show: c => set-en(c)

= Hsilo Bridge
<hsilo-bridge>

#set text(size: 18pt)

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
#show: c => set-zh(c)

= 七层下
<seven-layers-beneath>

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
		天狼在雉堞的齿隙升起

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
#show: c => set-en(c)

= Seven Layers Beneath
<seven-layers-beneath>

#set text(size: 16pt)

The wind now ebbs among the pines. The sun sets

West of the Civil War. Only snow garrisons the frontier.

Thin are the bald branches, like starved nerves of the ear.

In the chilled hush the shrubs are listening.

\

At sunset, the ill-tempered crow in the birch trees

Begins to curse, in dissonant blasphemies,

General Sedgwick with the broken sword.

Startled and strained ate the statues ears.

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

#align(right)[— _Devil's Den, Gettysburg_]

#pagebreak()
#show: c => set-zh(c)

= 钟乳岩

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

WIP


