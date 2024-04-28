#import "@preview/ilm:1.1.0": *
#import "@preview/rubby:0.10.1": get-ruby

#set document(
	title: [守夜人],
	author: "余光中"
)

#let r = get-ruby(
	size: 0.4em,
	dy:	2pt,
	alignment: "center"
)

#set text(
	font: (
		"MonaspiceAr NF",
		"Heiti SC",
	),
	size: 12pt,
)

#show heading: it => {
	if it.at("label", default: none) == none {
		set block(spacing: 2em)
		it
		return
	}
	it
	let hds = query(heading).filter(h => h.at("label", default: none) != none).filter(h => h != it)
	for hd in hds {
		set text(size: 12pt, weight: "light")
		if hd != hds.first() {
			[$space.med$|$space.med$]
		}
		if hd.label == it.label {
			link(hd.location())[#hd.body]
		}
	}
}

#set par(justify: false, leading: 0.8em)
#show par: set block(spacing: 1.6em)

#show link: set text(fill: blue.darken(33%))

#show outline: it => {
	set text(weight: "light")
	it
}

//SEC cover page

#grid(
	rows: (2fr, 1fr),
	grid(
		columns: (3fr, 1fr),
		[
			#text(size: 24pt)[余光中] 著·译
			#v(2em)
			#set text(size: 18pt, weight: "light", fill: black.lighten(33%))
			有这么一个人：像我像他像你 \
			#set text(size: 14pt)
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
			#text(
				size: 36pt,
				font: "MonaspiceRn NF",
				weight: "bold",
				fill: yellow.darken(67%)
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

= 编者按

我想作者一定不会介意我编写此书的。

#align(right)[#datetime.today().display()]

#pagebreak()

//SEC outline

#set text(size: 16pt)

#outline(title: [目录])

#pagebreak()

//SEC main body

#set page(numbering: "1")

= 西螺大桥
<hsilo-bridge>

#r[chù][矗]然，钢的灵魂醒着 \
严肃的静#r[kēng|qiāng][铿|锵]着

西螺平原的海风猛撼着这座 \
意志之塔的每一根神经 \
猛撼着，而且绝望地啸着 \
而铁钉的齿紧紧咬着，铁臂的手紧紧握着 \
严肃的静

于是，我的灵魂也醒了，我知道 \
既渡的我将异于 \
未渡的我，我知道 \
彼岸的我不能复原为 \
此岸的我 \
但命运自神秘的一点伸过来 \
一千条欢迎的臂，我必须渡河

面临通向另一个世界的 \
走廊，我微微地颤抖 \
但西螺平原壮阔的风 \
迎面扑来，告我以海在彼端 \
我微微地颤抖，但是我 \
必须渡河

矗立着，庞大的沉默 \
醒着，钢的灵魂

#pagebreak()

= Hsilo Bridge
<hsilo-bridge>

#set text(size: 14pt)

Loomingly, the soul of steel remains awake. \
Serious silence clangs.

Over the Hsilo Plain sea winds wildly shake \
This design of strength, this scheme of beauty; they shake \
Every nerve of this tower of will, \
Howling and yelling desperately. \
Still the teeth of nails bite, the claws of iron rails clench \
A serious silence.

Then my soul awakes; I know \
I shall be different once across \
From what on this side I am; I know \
The man across can never come back \
To the man before the crossing. \
Yet Fate from a mysterious center radiates \
A thousand arms to greet me; I must cross the bridge.

Facing the corridor to another world, \
I tremble a little. \
But the raw wind over the Hsilo Plain \
Blows against me with the tidings \
That on the other side is the sea. \
I tremble a little, but I \
must cross the bridge.

And tall looms the massive silence, \
And awake is the soul of steel.
