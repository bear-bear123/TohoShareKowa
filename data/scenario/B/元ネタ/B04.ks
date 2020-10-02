[call storage="macro.ks"]
[call storage="SaveAnyWhere.ks"]
[image storage="日記" page=fore layer=base]
[position layer=message0 left=30 top=400 width=150 height=40]
[position layer=message0 marginl=5 margint=0 marginr=5 marginb=5]
[position layer=message0 visible=false]
[position layer=message1 left=0 top=450 width=800 height=350]
[position layer=message1 marginl=50 margint=20 marginr=50 marginb=8] 
[position layer=message1 visible=true]
[position layer=message2 left=10 top=10 width=780 height=580]
[position layer=message2 marginl=5 margint=0 marginr=5 marginb=5]
[position layer=message2 visible=true]

[loadplugin module="wuvorbis.dll"]
[playbgm storage="哀愁.ogg"]

[キャラ→天の声]
[current page=back]
[trans method=crossfade  vague=1 time=500][wt]
[current page=fore]
[playse storage="紙" buf=0]
△月×日[plr]
[r]
今日は門番をしながらレミリアお嬢様を見送った。[plr]
まだ日光の降り注ぐ昼間ではあったが、手に持つ日傘をくるくると回しながら上機嫌な足取りだった[plr]
あの様子から察するに、行き先は恐らく紅白巫女の待つ博麗神社であろう。[p]
お嬢様の巫女に対するご執心振りには恐れ入る。[plr]
最近では神社へ出向く頻度もずいぶんと増えたものだ。[plr]
人間である巫女に対して、お嬢様はどのような感情を抱いているのだろうか。[plr]
お嬢様は吸血鬼。[plr]
種族が違うということは身体だけでなく価値観も違う。[plr]
互いの意思が通じ合うことなどがあるのだろうか。[plr]
[r]
[r]
[r]
……あるいは、私が人間である咲夜さんに対して抱いている感情と、もしかしたら同じなのかもしれない。[plr]
[cm]


[playse storage="紙" buf=0]
○月□日[plr]
[r]
最近、気が付くと咲夜さんのことばかりを考えている。[plr]
今日のお昼ごはんは何を作ってくれるのか。[plr]
それをどんな表情で私に渡してくれるのか。[plr]
働き過ぎて体を壊したりしていないだろうか。[plr]
仕事が終わった後には姿を見れる機会があるのか。[plr]
……そんなことを暇があればひたすらに考えている。[plr]
こんな経験は初めてだった。[plr]
一人の人間にここまで惹かれてしまうことも。[plr]
抱いたことのない欲求も湧いてしまうことも。[p]
しかし、彼女のことを考えるという行為は、結局のところ、孤独を知ることだ。[plr]
そして、それは自分自身を知ることでもある。[plr]
[r]
私は妖怪。[plr]
咲夜さんは人間。[plr]
咲夜さんを見ていると、こんな感情を抱くことは、ある意味では当然なのかもしれない。[plr]
[r]
それはとても醜く、許されざるものだ。[plr]
[r]
それでも、私は……[p]

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
[image layer=1 page=back storage="パチュリー（普2）" visible=true left=250 top=10]
[image layer=0 page=back storage="小悪魔（普）" visible=true left=-100 top=10]
[image storage="図書館" layer=base page=back]
[trans method=crossfade time=500]
[wt]

#パチュリー
「あの子もいろいろ考えているのねぇ……」[p]

#小悪魔
「そうですね、ちょっと私も考えちゃいます」[p]

[layopt layer=message0 page=fore visible=false]
ページを捲りつつ、先程と比べると落ち着いた二人が言いあった。[p]

[chara_mod name = Patchouli困 left=250  top=10 ]
#パチュリー
「たしかに、人間と妖怪では肉体の構成、というよりも、存在そのものが大きく異なる。[p]
いくら弾幕ごっこで対等な勝負ができる幻想郷とはいえ、それは覆らない真実だわ」[p]

[chara_mod name = Koakuma驚 left=-100  top=10 ]
#小悪魔
「で、でも……！」[p]

[layopt layer=message0 page=fore visible=false]
小悪魔は反論しようとし、しかし言葉が出てこなかった。[p]
人間である十六夜咲夜は妖怪である自分たちよりも早く天寿を全うする。[p]
それは紅魔館に住む誰もが理解していることであったからだ。[p]

[chara_mod name = Koakuma困 left=-100  top=10 ]
#小悪魔
「確かに、私達のような妖怪と人間の思いが通じるだなんて夢物語なのかもしれません。[p]
でも、だからといって美鈴さんたちにもそれが当てはまるとは限らないじゃないですか」[p]

[chara_mod name = Patchouli普 left=250  top=10 ]
#パチュリー
「………………そうね」[p]

[chara_mod name = Koakuma笑 left=-100  top=10 ]
#小悪魔
「それに、同じ思いはパチュリー様もしているのでは？[p]
どこかの誰かさんに対して♪」[p]

[chara_mod name = Patchouli赤怒 left=250  top=10 ]
#パチュリー
「…………………………」[p]

[chara_mod name = Patchouli余 left=250  top=10 ]
#パチュリー
「……………今度咲夜が来た時に、あなたのおやつを抜いてもらうよう頼んでおいてあげるわ」[p]

[chara_mod name = Koakuma泣 left=-100  top=10 ]
#小悪魔
「そ、そんな～」[p]


[backlay]
[image storage="black" layer=base page=back]
[layopt layer=0 page=back visible=false]
[layopt layer=1 page=back visible=false]
[trans method=crossfade time=500]
[wt]

[layopt layer=message0 page=fore visible=false]
そう言いながら2人は残りのページをめくっていった。[p]
そして、最後のページを見終えた後、2人は美鈴の部屋へと向かった。[p]
日記に記された、彼女の思いをその目で確かめるために。[p]


[fadeoutbgm time=5000]

[backlay]
[image storage="black" layer=base page=back]
[layopt layer=0 page=back visible=false]
[layopt layer=1 page=back visible=false]
[trans method=crossfade time=1500]
[wt]
[backlay]
[image storage="紅魔館(廊下)" layer=base page=back]
[trans method=crossfade time=1500]
[wt]
[jump storage=B/B05.ks]
