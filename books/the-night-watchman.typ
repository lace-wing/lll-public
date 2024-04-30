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
	set par(hanging-indent: 1em)
	show par: set block(spacing: 0.72em)
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

#show footnote.entry: set text(size: 12pt)

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
<h:hsilo-bridge>

#set text(size: 18pt)

#r[chù][矗]然，钢的灵魂醒着

严肃的静#r[kēng][铿]#r[qiāng][锵]着

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
#show: c => set-zh(c)

= 七层下
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
#show: c => set-en(c)

= Seven Layers Beneath
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
#show: c => set-zh(c)

= 钟乳岩
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
#show: c => set-en(c)

= Smoke Hole Cavern
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
#show: c => set-zh(c)

= 当我死时
<when-i-am-dead>

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
#show: c => set-en(c)

= When I Am Dead
<when-i-am-dead>

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
#show: c => set-zh(c)

= 灰鸽子
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
#show: c => set-en(c)

= Gray Pigeons
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
