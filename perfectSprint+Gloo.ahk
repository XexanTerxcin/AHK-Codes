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
    Send 1
return












; ===== Yahya's Sprint Toggle =====

global ToggleShiftW := false

CapsLock::
{
    ReleaseSprint()
    
    if (!ToggleShiftW) {
        Send {Blind}{LShift Down}
        Sleep 40
        Send {Blind}{w Down}
        ToggleShiftW := true
    }
    return
}

ReleaseSprint() {
    global ToggleShiftW
    if (ToggleShiftW) {
        Send {Blind}{w Up}
        Sleep 40
        Send {Blind}{LShift Up}
        ToggleShiftW := false
    }
}

~*w::
~*a::
~*s::
~*d::
~*c::
~*LButton::
~*CapsLock::
{
    ReleaseSprint()
    return
}