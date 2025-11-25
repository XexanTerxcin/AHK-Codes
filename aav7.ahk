e::
    ; X (Select gloo)
    Send {x down}
    Sleep 50 + Random(10,40)
    Send {x up}
    Sleep 60 + Random(20,50)

    ; C (Crouch)
    Send {c down}
    Sleep 70 + Random(20,40)
    Send {c up}
    Sleep 90 + Random(30,50)

    ; Click (place gloo)
    Sleep 30 + Random(10,30)
    Click
return
