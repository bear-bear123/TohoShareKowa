;シナリオ選択後の遷移
[macro name=SenarioStart]
  [playse storage=%sound buf=0]
  [image storage=black.png layer=base page=back]
  [trans layer=base method=crossfade time=3000]
  [wt]
  [jump storage=%senario]
[endmacro]

;サウンドノベル形式への変更
[macro name=SoundNobelMode]
  [position layer="message1" height=580 ]
  [layopt layer="message0" visible="false"]
  [layopt layer="message1" visible="true"]
  [current layer="message1"]
[endmacro]

;アドベンチャー形式への変更
[macro name=AdventureMode]
  [layopt layer="message0" visible="true"]
  [layopt layer="message1" visible="false"]
  [current layer="message0"]
[endmacro]

;シーンチェンジ
[macro name=ScerneChange]
  #
  [mask time="1000"]
    [chara_hide_all]
    [fadeoutbgm time=3000]
    [bg storage=%bgimage]
  [mask_off time="1000"]
[endmacro]

;暗転からの登場 バニシングエブリシング
[macro name=VanishingEverything]
  [backlay]
  [image storage="black.png" layer=base page=back]
  [trans layer="base" method=crossfade time=1500]
  [wt]
  [playse storage=%sound buf=0]
  [image storage=%bgimage layer=base page=back]
  [trans layer="base" time=1500]
  [chara_show name=%charaName left=400 top=10]
  [wt]
[endmacro]

[return]
