SendMode Event
SetKeyDelay, 40, 40
SetMouseDelay, 40

e::
    ; Reset state – makes next inputs more reliable
    Sleep 20

    ; 1. Select Gloo (X)
    Send {x down}
    Sleep 80
    Send {x up}
    Sleep 90   ; game needs time to switch to gloo wall

    ; 2. Crouch (C)
    Send {c down}
    Sleep 120
    Send {c up}
    Sleep 120  ; let FF confirm crouch state

    ; 3. Place Gloo
    Click
    Sleep 100  ; allow placement animation
return


q::
    Send 1
return
