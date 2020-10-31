*start
*title
;自作マクロ呼出し
[call storage="macro.ks"]

;テーマ・プラグイン設定
[plugin name="theme_tyrano_05" ]

;メッセージレイヤを非表示にしておく
[layopt layer=message0 visible=false ]

;バックログの削除
[eval exp="tf.system.backlog = []"]

;メニューボタンの非表示

;背景画像を設定
[image layer="base" page="fore" storage=title.png]

[locate x=230 y=400 ]
[glink  color="theme_tyrano_05"  size="19"  x="230" y="400" width="150"    text="はじめから"  target="*first"  ]

[locate x=530 y=400 ]
[glink  color="theme_tyrano_05"  size="19"  x="530" y="400" width="150"    text="つづきから"  target="*loadmenu"  ]

[s]

;つづきからボタンが押された場合。ロード画面を表示
*loadmenu
[playse storage="OK.wav" buf=0]
[cm]
[showload]

[jump target=*title]
[s]

;ストーリー最初から
*first
[playse storage="OK.wav" buf=0]
[cm]
[freeimage layer=1]

[image storage=black.png layer=base page=back]
[trans layer=base time=1500]
[wt]

;シナリオ選択画面
*seniro
;[glink  color="theme_tyrano_05"  size="19"  x="100"  width="250"  y="50"  text="三つの選択と嘘"  target="*story1"  ]
[glink  color="theme_tyrano_05"  size="19"  x="100"  width="250"  y="50"  text="3つの選択と嘘"  target="*story1"  ]
;[glink  color="theme_tyrano_05"  size="19"  x="100"  width="250"  y="100"  text="門番の思い"  target="*story2"  ]
;[glink  color="theme_tyrano_05"  size="19"  x="100"  width="250"  y="150"  text="門番の末路"  target="*story3"  ]
;[glink  color="theme_tyrano_05"  size="19"  x="100"  width="250"  y="200"  text="不死人と亡霊の将棋"  target="*story4"  ]
;[glink  color="theme_tyrano_05"  size="19"  x="100"  width="250"  y="250"  text="welcome to the Sealing Club"  target="*story5"  ]
;[glink  color="theme_tyrano_05"  size="19"  x="100"  width="250"  y="300"  text="○○トンネル"  target="*story6"  ]
;[glink  color="theme_tyrano_05"  size="19"  x="100"  width="250"  y="350"  text="吸血鬼の呪い"  target="*story7"  ]
;[glink  color="theme_tyrano_05"  size="19"  x="100"  width="250"  y="400"  text="電話の向こう側"  target="*story8"  ]
;[glink  color="theme_tyrano_05"  size="19"  x="100"  width="250"  y="450"  text="無邪気なる花"  target="*story9"  ]
;[glink  color="theme_tyrano_05"  size="19"  x="500"  width="250"  y="50"  text="クリスQ事変"  target="*story10"  ]
;[glink  color="theme_tyrano_05"  size="19"  x="500"  width="250"  y="100"  text="宵の音"  target="*story11"  ]
;[glink  color="theme_tyrano_05"  size="19"  x="500"  width="250"  y="150"  text="寺生まれで霊感の強い聖さん"  target="*story12"  ]
;[glink  color="theme_tyrano_05"  size="19"  x="500"  width="250"  y="200"  text="簀巻きのスキマ"  target="*story13"  ]
;[glink  color="theme_tyrano_05"  size="19"  x="300"  width="250"  y="550"  text="タイトルへ戻る"  target="*start "  ]
[s]

;シナリオ各先リンク
*story1
[SenarioStart sound = "tejo.wav" senario = 01_ThreeChoiceThreeLie/Init_ThreeChoiceThreeLie.ks ]
*story2
[SenarioStart sound = "解錠音" senario = B/B00.ks ]
*story3
[SenarioStart sound = "解錠音" senario = C/C00.ks ]
*story4
[SenarioStart sound = "駒音_将棋・駒を強めに指す03" senario = D/D00.ks ]
*story5
[SenarioStart sound = "解錠音" senario = E/E00.ks ]
*story6
[SenarioStart sound = "nc45761_足音" senario = F/F00.ks ]
*story7
[SenarioStart sound = "headache" senario = G/G00.ks ]
*story8
[SenarioStart sound = "nc44292" senario = H/H00.ks ]
*story9
[SenarioStart sound = "蛍光灯がチカチカと" senario = I/I00.ks ]
*story10
[SenarioStart sound = "鈴" senario = K/K00.ks ]
*story11
[SenarioStart sound = "カーチェイスショート" senario =J/J00.ks ]
*story12
[SenarioStart sound = "蛍光灯がチカチカと" senario =L/L00.ks ]
