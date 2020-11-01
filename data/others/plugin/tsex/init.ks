[if exp="$.isElectron()"]

    [loadjs storage="plugin/tsex/main.js"]
    [iscript]
    global.__tsex.hotkey = mp.hotkey
    global.__tsex.swithkey = mp.switchkey
    [endscript]

[endif]
[return]
[s]

*go
[jump storage="&tf.storage"]
[s]