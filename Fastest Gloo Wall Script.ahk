SendMode Event
SetKeyDelay, 40, 40
SetMouseDelay, 40

e::
    Sleep 10

    ; 1. Select Gloo (X)
    Send {x down}
    Sleep 5
    Send {x up}
    Sleep 5

    ; 3. Place Gloo
    Click
    Sleep 5
return


q::
    Send 8
return
