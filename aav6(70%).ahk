e::
    ; X (Select gloo)
    Random, r1, 10, 40
    Send {x down}
    Sleep 50 + r1
    Send {x up}

    Random, r2, 20, 50
    Sleep 60 + r2

    ; Click (place gloo)
    Random, r5, 10, 30
    Sleep 30 + r5
    Click
return

q::
    Send 1
return
