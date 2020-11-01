(function(){
    const { app, globalShortcut, BrowserWindow} = require('electron').remote.require("electron")

    global.__tsex = {
        _save: [],
        isSnap: false,
        skipIndex: -999,
        defSkipSpeed: 30,
        defUnReadTextSkip: false,
        isAuto: false,
        isSkip: false,
        hotkey: "Alt+Shift+R",
        swithkey: "Ctrl+Shift+Q"
    }
    var debug = $(".ui-draggable")
    debug.append("<br>")
    debug.append("<select name='select' class='scenario_select selectbox'></select>")
    debug.append("<span class='button scenario_button'>ジャンプ</span><br>")
    debug.append("<select name='line' class='label_select selectbox'></select>")
    debug.append("<span class='button label_button'>ここまでスキップ</span><br>")
    debug.append("<span class='button prev'>ひとつ戻る</span>")
    debug.append('<label class="checklabel"><input name="mute_check" id="mute_check" type="checkbox" class="checkmute debub_check" />ミュート</label>')
    debug.append('<label class="checklabel"><input name="auto_check" id="auto_check" type="checkbox" class="checkauto debub_check" />オート</label>')
    debug.append('<label class="checklabel"><input name="skip_check" id="skip_check" type="checkbox" class="checkskip debub_check" />スキップ</label>')
    debug.append("<span class='button capture'>スクリーンショット</span>")
    
    debug.css({
        "line-height": "120%",
    })
    $("span.button").css({
        "font-size": "14px",
        margin: "0 4px",
        background: "#333",
        display: "inline-box",
        color: "white",
        border: "1px white solid",
        padding: "2px 8px",
        margin: "4px 0",
        cursor: "pointer",
    })
    
    $(".selectbox").css({
        width: "320px",
        height: "32px",
        margin: "8px 0"
    })
    
    $(".checklabel").css({
        color: "black",
        "margin-left": "12px",
        "margin-right": "12px",
    })
    $(".checkbox").css({
        opacity: 1,
        position: "relative",
        width: "16px",
        height: "16px",
    })
    $(".debub_check").css({
        opacity: 1,
        height: "16px",
        width: "16px",
        position: "initial",
    })
    
    const fs = require('fs');
    const path = require('path');
    const readSubDirSync = (folderPath) => {
        let result = [];
        const readTopDirSync = ((folderPath) => {
            let items = fs.readdirSync(folderPath);
            items = items.map((itemName) => {
                return path.join(folderPath, itemName);
            });
            items.forEach((itemPath) => {
                result.push(itemPath);
                if (fs.statSync(itemPath).isDirectory()) {
                    readTopDirSync(itemPath);
                    //再帰処理
                }
            });
        });
        readTopDirSync(folderPath);
        return result;
    };

    scenario = []
    var items = readSubDirSync(__dirname + "/data/scenario");
    items.forEach((itemPath) => {
        if(itemPath.indexOf(".ks") > 0){
            var scene = path.relative(__dirname + "/data/scenario", itemPath)
            var opt = $("<option></option>")
            scene = scene.replace(/\\/g, "/")
            opt.attr("val", scene)
            opt.text(scene)
            $(".scenario_select").append(opt)    
        }
    });
        
    //シナリオジャンプ
    $(".scenario_button").on("click", function(){
        //セーブデータをリセット
        global.__tsex._save = []

        TYRANO.kag.variable.tf.storage = $('.scenario_select').val()
        TYRANO.kag.loadScenario(TYRANO.kag.variable.tf.storage, function(ary_tag){
            for(var i = 0; i < ary_tag.length; i++){
                var opt = $("<option></option>")
                opt.val(i)
                opt.text(ary_tag[i].line + "：[" + ary_tag[i].name + "]" + ary_tag[i].val)
                $(".label_select").append(opt)
            }
        })
        TYRANO.kag.ftag.startTag("cm")
        TYRANO.kag.ftag.startTag("clearfix")
        TYRANO.kag.ftag.startTag("freeimage", {
            layer: "base"
        })
        for(var i = 0; i < TYRANO.kag.config.numCharacterLayers; i++){
            TYRANO.kag.ftag.startTag("freeimage", {
                layer: i
            })
        }
        for(var i = 0; i < TYRANO.kag.config.numMessageLayers; i++){
            TYRANO.kag.ftag.startTag("layopt", {
                layer: i, 
                visible: false,
            })
        }
        TYRANO.kag.ftag.startTag("jump", {
            storage: "../others/plugin/tsex/init.ks",//TYRANO.kag.variable.tf.storage,
            target: "*go",
        })        
        //TYRANO.kag.ftag.startTag("s")
    })
    
    //指定位置までスキップ
    $(".label_button").on("click", function(e){
        e.preventDefault()
        e.stopPropagation()
        global.__tsex.defSkipSpeed = TYRANO.kag.config.skipSpeed
        TYRANO.kag.config.skipSpeed = 1
        global.__tsex.defUnReadTextSkip = TYRANO.kag.config.unReadTextSkip
        TYRANO.kag.config.unReadTextSkip = true
        global.__tsex.skipIndex = parseInt($(".label_select").val())
        TYRANO.kag.ftag.startTag("skipstart", {});
})

    //ミュート
    $(".checklabel").on("click", ".checkmute",  function(e){
        //return false
        //e.stopPropagation()
        //e.preventDefault()
    })
    $(".checkmute").on("change", function(e){
        e.stopPropagation()
        if($(".checkmute").prop("checked")){
            BrowserWindow.getAllWindows()[1].webContents.audioMuted = true
        }else{
            BrowserWindow.getAllWindows()[1].webContents.audioMuted = false
        }
        return false
    })
    if(BrowserWindow.getAllWindows()[1].webContents.audioMuted){
        $(".checkmute").prop("checked", true)
    }else{
        $(".checkmute").prop("checked", false)
    }

    //オート
    $(".checkauto").on("change", function(e){
        if($(".checkauto").prop("checked")){
            TYRANO.kag.ftag.startTag("autostart")
        }else{
            TYRANO.kag.ftag.startTag("autostop")
        }
        e.stopPropagation()
        //return false
    })

    //スキップ
    $(".checkskip").on("change", function(e){
        if($(".checkskip").prop("checked")){
            TYRANO.kag.ftag.startTag("skipstart")
        }else{
            TYRANO.kag.ftag.startTag("skipstop")
        }
        e.stopPropagation()
    })

    //戻る
    $(".prev").on("click", function(){
        var data = null
        for(var i = global.__tsex._save.length - 1; i > 0; i--){
            data = global.__tsex._save[global.__tsex._save.length - 1]
            global.__tsex._save.pop()
            if(data.current_order_index > 0){
                break;
            }
        }
        data = global.__tsex._save[global.__tsex._save.length - 1]
        global.__tsex._save.pop()
        TYRANO.kag.menu.loadGameData($.extend(true, {}, data))
    })

    //キャプチャ
    $(".capture").on("click", function(){
        $(".ui-draggable").css("display", "none")
        var base = $(".tyrano_base").get(0)
        var offset_top = base.offsetTop
        var offset_left = base.offsetLeft
        var width = base.offsetParent.clientWidth - offset_left * 2
        var height = base.offsetParent.offsetHeight - offset_top * 2
        BrowserWindow.getAllWindows()[1].capturePage({
            x: offset_left,
            y: offset_top,
            width: width,
            height: height,
        }).then((img) => {
            var el = $("<a></a>")
            var d = $.replaceAll($.getNowDate(), "/", "")
            var t = $.replaceAll($.getNowTime(), "：", "")
            el.attr("href", img.toDataURL())
            el.attr("download", d + t + ".png")
            el.css({
            })
            el[0].click();
            $(".ui-draggable").css("display", "")
        })         
    })


    //リロード
    globalShortcut.unregisterAll()
    globalShortcut.register(global.__tsex.hotkey, () => {
        $(".ui-draggable button").trigger("click")
        BrowserWindow.getAllWindows()[1].focus()
    })
    //表示ON/OFF
    window.addEventListener('keyup', function(e){
        console.log(BrowserWindow.getAllWindows()[1])
        if(e.key == "Q" && e.ctrlKey && e.shiftKey){
            var disp = $(".ui-draggable").css("display") == "none" ? "" : "none"
            $(".ui-draggable").css({
                display: disp,
            })    
        }
    }, true)
})()


    var _showNextImg = TYRANO.kag.ftag.showNextImg
    TYRANO.kag.ftag.showNextImg = function(){
        _showNextImg.apply(TYRANO, arguments)
        var that = TYRANO.kag.menu;
        that.snapSave("saveTitle", function() {
            global.__tsex._save.push(that.snap)
        }, "false");    
    }

    var _nextOrder = TYRANO.kag.ftag.nextOrder
    TYRANO.kag.ftag.nextOrder = function () {
        if(global.__tsex.skipIndex > 0){
            var line = 0
            if(TYRANO.kag.stat.stack["macro"].length === 0){
                //var array_tag = TYRANO.kag.ftag.array_tag
                line = TYRANO.kag.ftag.current_order_index  //array_tag[TYRANO.kag.ftag.current_order_index].line  //TYRANO.kag.stat.current_line
            }else{
                line = 0    //TYRANO.kag.stat.stack["macro"][0].index
            }
            if(global.__tsex.skipIndex <= line){
                TYRANO.kag.stat.is_skip = false
                global.__tsex.skipIndex = -999
                TYRANO.kag.config.skipSpeed = global.__tsex.defSkipSpeed
                TYRANO.kag.config.unReadTextSkip = global.__tsex.defUnReadTextSkip
            }else{
            }
        }
        if(TYRANO.kag.stat.is_auto === false){
            $(".checkauto").prop("checked", false)            
        }
        if(TYRANO.kag.stat.is_skip === false){
            $(".checkskip").prop("checked", false)
        }
        _nextOrder.apply(this)
    }

    /*
    var _loadScenario = tyrano.plugin.kag.loadScenario
    tyrano.plugin.kag.loadScenario = function(file_name,call_back){
        //_loadScenario.apply(this)
        var that = this;
        this.stat.is_strong_stop = true;
        this.stat.current_scenario = file_name;

        //同じディレクトリにある、KAG関連のデータを読み込み
        var file_url = "";
        if($.isHTTP(file_name)){
            file_url = file_name;	
        }else{
            file_url = "./data/scenario/"+file_name;
        }
    	//キャッシュ確認
        if(that.cache_scenario[file_url]){
            if(call_back){
                var result_obj = that.cache_scenario[file_url];
                var tag_obj = result_obj.array_s;
                var map_label = result_obj.map_label;
                //ラベル情報を格納
                that.stat.map_label = map_label;
                that.stat.is_strong_stop = false;
                call_back(tag_obj);

                $(".label_select").find("option").remove()
                for(var i = 0; i < tag_obj.length; i++){
                    var opt = $("<option></option>")
                    opt.val(i)
                    opt.text(tag_obj[i].line + "：[" + tag_obj[i].name + "]" + tag_obj[i].val)
                    $(".label_select").append(opt)
                }
        
            }
        }else{
            $.loadText(file_url,function(text_str){
                var result_obj = that.parser.parseScenario(text_str);
                that.cache_scenario[file_url] = result_obj;
                var tag_obj = result_obj.array_s;
                var map_label = result_obj.map_label;
                //ラベル情報を格納
                that.stat.map_label = map_label;
                that.stat.is_strong_stop = false;
                if(call_back){
                    call_back(tag_obj);
                }
                $(".label_select").find("option").remove()
                for(var i = 0; i < tag_obj.length; i++){
                    var opt = $("<option></option>")
                    opt.val(i)
                    opt.text(tag_obj[i].line + "：[" + tag_obj[i].name + "]" + tag_obj[i].val)
                    $(".label_select").append(opt)
                }
        
            });
        }
    }
    */
