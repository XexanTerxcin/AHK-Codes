; ===== COMBINED: Sprint Toggle + Mouse Wheel Controls =====
#InstallMouseHook
#InstallKeybdHook
Process, Priority, , High

; ===== GLOBAL TOGGLE STATE =====
global ToggleShiftW := false

; ===== MAIN TOGGLE for Shift + W =====
LShift::
{
    ; Always release the sprint first when Shift is pressed
    ReleaseSprint()
    
    ; If sprint was just released by the above call, don't start it again
    if (!ToggleShiftW) {
        ; Engage Sprint (Hold down both Shift and W)
        Send {Blind}{LShift Down}
        Sleep 40
        Send {Blind}{w Down}
        ToggleShiftW := true
    }
    return
}

; ===== FUNCTION to Release Sprint =====
ReleaseSprint() {
    global ToggleShiftW
    if (ToggleShiftW) { ; Only run if sprint is currently active
        Send {Blind}{w Up}
        Sleep 40
        Send {Blind}{LShift Up}
        ToggleShiftW := false
    }
}

; ===== HOTKEYS TO CANCEL SPRINT =====
; Pressing W, A, S, D, C, LButton will release the sprint.
~*w::
~*a::
~*s::
~*d::
~*c::
~*LButton::
{
    ReleaseSprint()
    return
}

; ===== ULTRA-RELIABLE MOUSE WHEEL CONTROLS =====
; --- Scroll Up -> 1 ---
WheelUp::
{
    SendInput, {sc02} ; Scancode for 1
    return
}

; --- Scroll Down -> 3 ---
WheelDown::
{
    SendInput, {sc04} ; Scancode for 3
    return
}

; --- Middle Button -> R (Super Reliable) ---
MButton::
{
    ; Send multiple R presses using different methods
    SendInput, {sc13}
    Sleep, 5
    SendEvent, {sc13}
    Sleep, 5
    SendInput, {sc13}
    Sleep, 5
    SendEvent, {sc13}
    Sleep, 5
    SendInput, {sc13}
    return
}