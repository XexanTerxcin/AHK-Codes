#MaxThreadsPerHotkey 1
SendMode Event
SetKeyDelay, 40, 40
SetMouseDelay, 40

; Sprint Toggle
global ToggleShiftW := false

CapsLock::
{
    ReleaseSprint()
    if (!ToggleShiftW) {
        Send {Blind}{LShift down}
        Sleep 40
        Send {Blind}{w down}
        ToggleShiftW := true
    }
    return
}

ReleaseSprint() {
    global ToggleShiftW
    if (ToggleShiftW) {
        Send {Blind}{w up}
        Sleep 40
        Send {Blind}{LShift up}
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
    ReleaseSprint()
return

; Gloo Wall
e::
    Sleep 10
    Send {Blind}{x down}
    Sleep 20
    Send {Blind}{x up}
    Sleep 20
    Send {Blind}{c down}
    Sleep 20
    Send {Blind}{c up}
    Sleep 20
    Click
return

q::
    Send {Blind}1
return
