; Stable Gloo Macro (E Key)
e::
    SendEvent {x down}
    Sleep 60
    SendEvent {x up}
    Sleep 70

    SendEvent {c down}
    Sleep 70
    SendEvent {c up}
    Sleep 80

    Click
return

q::
    SendEvent 1
return
