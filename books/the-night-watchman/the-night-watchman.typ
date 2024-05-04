#import "@preview/ilm:1.1.0": *
#import "@preview/rubby:0.10.1": get-ruby

#set document(
	title: [守夜人],
	author: "余光中"
)

#let r = get-ruby(
	size: 0.4em,
	dy: 2pt,
	alignment: "center"
)

#let set-en(doc) = {
	set text(lang: "en", size: 18pt)
	set par(hanging-indent: 1em)
	show par: set block(spacing: 0.74em)
	show emph: set text(
		font: "Baskerville",

	)
	doc
}
#let set-zh(doc) = {
	set text(lang: "zh", size: 18pt)
	set par(hanging-indent: 0em)
	show par: set block(spacing: 1em)
	show emph: set text(
		font: "Kaiti SC",
		style: "normal"
	)
	doc
}

#let hg = h(1em)

#let emph-en(body) = {
	show emph: set text(
		font: "Baskerville",
	)
	emph(body)
}
#let emph-zh(body) = {
	show emph: set text(
		font: "Kaiti SC",
		style: "normal"
	)
	emph(body)
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

#pagebreak()
#show: c => set-zh(c)

= 单人床
<the-single-bed>

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
#show: c => set-en(c)

= The Single Bed
<the-single-bed>

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
#show: c => set-zh(c)

= 黑天使
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
			#set text(size: 14pt)
			_自注：写成后，才发现这首《黑天使》是首尾相衔的联锁体，段与段之间不可能读断。Emily Dickinson 的 #emph-en[_I Like to See It Lap the Miles_] 近于此体。_
		]
	),
)

#pagebreak()
#show: c => set-en(c)

= The Black Angel
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
#show: c => set-zh(c)

= 有一只死鸟
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

		顺着钟面的短针，长针 #footnote[译注：此处并未分段]<ft:no-par-sep>
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
#show: c => set-en(c)

= There Was a Dead Bird
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
#show: c => set-zh(c)

= 致读者
<h:to-the-reader>

一千个故事是一个故事

那主题永远是一个主题

永远是一个羞耻和荣誉

当我说中国时我只是说

有这么一个人：像我像他像你

#pagebreak()
#show: c => set-en(c)

= To the Reader
<h:to-the-reader>

A thousand stories make one story;

The theme forever same's the theme,

Forever the shame and the glory;

When I say China I only mean

Such as myself and you and him.

#pagebreak()
#show: c => set-zh(c)

= 双人床
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
#show: c => set-en(c)

= The Double Bed
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
