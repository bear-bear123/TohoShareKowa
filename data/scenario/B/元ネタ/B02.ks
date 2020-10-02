[call storage="macro.ks"]
[call storage="SaveAnyWhere.ks"]
[position layer=message2 left=10 top=10 width=780 height=580]
[position layer=message2 marginl=5 margint=0 marginr=5 marginb=5]
[position layer=message2 visible=false]
[wait time=200]

[loadplugin module="wuvorbis.dll"]
[playbgm storage="日時計の丘.ogg"]

;登場キャラクターから天の声へ
[キャラ→天の声]
[current page=back]
[trans method=crossfade  vague=1 time=500][wt]
[current page=fore]


[playse storage="紙" buf=0]
○月×日[plr]
[r]
本日も紅魔館の門は平和であった。[plr]
時折、妖精が私をからかいにくるくらいで、何事もない日常が過ぎて行った。[plr]
いつも通りの起床。[plr]
いつも通りの仕事。[plr]
そして、いつも通りの咲夜さんからのお昼ご飯の差し入れ。[plr]
今日の差し入れは炊き込みご飯のお握りとお茶であった。[p]
以前、私が食べたいと言っていたメニューだ。[plr]
咲夜さんは覚えていてくれていたんだ……。[plr]
ご飯を届けに来た時の咲夜さんが少し得意げな表情をしていたことに納得がいった。[plr]
もちろん味は文句のつけようがなかった。[plr]
[r]
[r]
[r]
……恐らく、私は咲夜さんが作った物なら何でもおいしく食べてしまえるのだろうな。[p]


[playse storage="紙" buf=0]
○月□日[plr]
[r]
今日は門番ではなく館内での仕事であった。[plr]
なんでも、倉庫の整理をするために重いものを運べる力がある者が必要であったらしい。[plr]
私は咲夜さんに指示されながら、荷物の搬入を行っていた。[p]
確かに重い荷物ではあったが、私にとっては些細なものであった。[plr]
咲夜さんは私に指示を出しながらも、自分が運べるような細かな調度品の整理を行っていた。[plr]
それは2人だけの共同作業であった。[p]
私が仕事を終えると同時に咲夜さんも仕事を終えたようだ。[plr]
私に労いの言葉をかけに来てくれた。[plr]
[r]
[r]
[r]
……そこで私は咲夜さんの髪の毛に塵ゴミがついているのを見つけた。[plr]
私は右手で咲夜さんを引き寄せ、左手でそれを取り払った。[plr]
すると、咲夜さんは顔を赤らめながら、ありがとうと言った。[p]
私はその時に触れた咲夜さんの肩が、[plr]髪が、[plr]掛けられた言葉が、[plr]そのどれもが愛おしく、[plr]彼女に関連するすべての物を私の物にしてしまえればと、そんな下らないことを考えてしまっていた。[p]


[天の声→キャラ]

[backlay]
[image storage="black" layer=base page=back]
[layopt layer=0 page=back visible=false]
[layopt layer=1 page=back visible=false]
[layopt layer=message0 page=fore visible=false]
[layopt layer=message1 page=fore visible=false]
[trans method=crossfade time=500]
[wt]
[backlay]
[image layer=0 page=back storage="パチュリー（笑）" visible=true left=250 top=10]
[image layer=1 page=back storage="小悪魔（笑）" visible=true left=-100 top=10]
[image storage="図書館" layer=base page=back]
[trans method=crossfade time=500]
[wt]

#パチュリー
「………………くく」[p]

#小悪魔
「………………ふふ」[p]

[layopt layer=message0 page=fore visible=false]
大図書館に響く声にならない笑い声。[p]
その声の主を、他人の日記を読みながらにやにやと笑い続ける女性2人を誰かが見たら、いったいどう表現するだろうか。[p]

#パチュリー
「こ、これは想像以上の喜劇になってきたわね♪」[p]

#小悪魔
「あ、悪趣味ですよ、パチュリー様～♪」[p]

[layopt layer=message0 page=fore visible=false]
そう言いながら彼女たちは続きのページをめくるのであった。[p]

[fadeoutbgm time=5000]

[backlay]
[image storage="black" layer=base page=back]
[layopt layer=0 page=back visible=false]
[layopt layer=1 page=back visible=false]
[layopt layer=message0 page=fore visible=false]
[layopt layer=message1 page=fore visible=false]
[trans method=crossfade time=1500]
[wt]
[backlay]
[image storage="紅魔館(廊下)" layer=base page=back]
[trans method=crossfade time=1500]
[wt]
[jump storage=B/B03.ks]
