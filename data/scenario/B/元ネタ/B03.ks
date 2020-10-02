[call storage="macro.ks"]
[call storage="SaveAnyWhere.ks"]


[loadplugin module="wuvorbis.dll"]
[playbgm storage="希望.ogg"]

[chara_mod name = Sakuya（赤困 left=-100  top=10 ]
大図書館を後にした後、咲夜は残った館の仕事に勤しんでいた。[p]
しかし、手は動かしながらも心ここにあらずといった感じであった。[p]
その顔は、常に上気し、今にも沸騰してしまいそうであった。[p]


#十六夜咲夜
「全く、パチュリー様もおふざけになられたこと……」[p]

[layopt layer=message0 page=fore visible=false]
そう言いながらも考えることは先程指摘された美鈴のことであった。[p]
美鈴が私を？[p]
好きに？[p]
いやいや、まさかそんな。[p]
だって、美鈴はいつも小さいころから一緒にいたのだし、今更そんな恋愛感情を抱いているなんて。[p]
ああ、でも確かに、昼間の表情もそれならば合点がいくのかもしれない。[p]
あの呆けた表情は、何かしらを考えているため、心ここにあらずと言った感じでもあった。[p]
……というか、私はどうなのだろう。[p]
パチュリー様は満更でもなければなどと言っていたが、[p]私は美鈴を……[p]
まさかまさか、それこそあり得ない。[p]
だって、美鈴は私にとって最も身近な存在であって、家族みたいなもので、断じてそんなことは。[p]
そんな思考を何度も繰り返していると、時刻はいつの間にか夕方に近づいてきていた。[p]
そろそろ、美鈴が門番の仕事を終えて自分の部屋に戻るころであった。[p]

[chara_mod name = Sakuya（h赤怒 left=-100  top=10 ]
#十六夜咲夜
「……だったら、私自身で確かめてみるまでですわ」[p]

[layopt layer=message0 page=fore visible=false]
そう言って咲夜は美鈴の部屋へと向けて足を動かした。[p]

[fadeoutbgm time=5000]


[image storage="black" layer=base page=back]
[layopt layer=0 page=back visible=false]
[layopt layer=1 page=back visible=false]
[layopt layer=message0 page=fore visible=false]
[layopt layer=message1 page=fore visible=false]
[trans method=crossfade time=1500]
[wt]
[backlay]
[image storage="日記" layer=base page=back]
[layopt layer=message0 page=back visible=false]
[layopt layer=message1 page=back visible=false]
[trans method=crossfade time=1500]
[wt]
[jump storage=B/B04.ks]
