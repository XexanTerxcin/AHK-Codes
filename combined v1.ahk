; ===== SMY's Sprint Toggle =====
; Toggle Sprint with Shift. Release on WASD, C, LButton, or Shift.

; ===== GLOBAL TOGGLE STATE =====
global ToggleShiftW := false

; ===== MAIN TOGGLE for Shift + W =====
LShift::
{
    ; Always release the sprint first when Shift is pressed
    ; This handles the "second press" to release
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
; Pressing W, A, S, D, C, LButton, or LShift will release the sprint.
; The ~ prefix allows the original key press to pass through to the game.

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

; ===== SMY's Sprint Toggle =====


SendMode Event
SetKeyDelay, 45, 45
SetMouseDelay, 45

e::
    Sleep 10

    ; 1. Select Gloo (X)
    Send {x down}
    Sleep 5
    Send {x up}
    Sleep 5

    ; 2. Crouch (C)
    Send {c down}
    Sleep 5
    Send {c up}
    Sleep 5

    ; 3. Place Gloo
    Click
    Sleep 5
return


q::
    Send 1
return
