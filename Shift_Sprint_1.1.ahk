; ===== Yahya's Sprint Toggle =====
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
        Sleep 10
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
        Sleep 10
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
~*c:: ; <-- Added C key here
~*LButton::
{
    ReleaseSprint()
    return
}