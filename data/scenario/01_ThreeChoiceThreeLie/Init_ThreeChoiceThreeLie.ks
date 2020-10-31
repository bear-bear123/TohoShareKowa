*start

[cm]
[clearfix]
[start_keyconfig]

;登場キャラクターの登録
[call target=*Marisa_Init storage="chara/Marisa.ks"]
[call target=*Sanae_Init storage="chara/Sanae.ks"]
[call target=*Sakuya_Init storage="chara/Sakuya.ks"]
[call target=*Sakuya2_Init storage="chara/Sakuya2.ks"]
[call target=*Flan_Init storage="chara/Flan.ks"]
[call target=*Meirin_Init storage="chara/Meirin.ks"]
[call target=*Remilia_Init storage="chara/Remilia.ks"]

;メニューボタンの表示
[add_theme_button]

;メッセージウィンドウの表示
[layopt layer=message0 visible=true]

;シナリオジャンプ
[jump storage=01_ThreeChoiceThreeLie.ks]
