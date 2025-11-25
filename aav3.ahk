; ===== Yahya's Sprint Toggle + Macro =====
; Run this script as Administrator (right-click AutoHotkey -> Run as admin).
; Tested for AHK v1.x syntax (uses :=). Adjust if you're on v2.

SendMode Input        ; faster and more reliable for games
SetKeyDelay, 20, 10   ; small delay between down/up sends (ms)
SetMouseDelay, 20
SetControlDelay, -1

; ===== GLOBAL STATES =====
global ToggleShiftW := false
global SuppressRelease := false   ; used to suppress release during macros

; ===== MAIN TOGGLE for Shift + W =====
$LShift::   ; $ prevents the hotkey from triggering itself
{
    ReleaseSprint() ; always try to release first (handles double-press)
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
    global ToggleShiftW, SuppressRelease
    if (SuppressRelease)    ; if a macro is running that requires C, don't release
        return
    if (ToggleShiftW) {
        Send {Blind}{w Up}
        Sleep 40
        Send {Blind}{LShift Up}
        ToggleShiftW := false
    }
}

; ===== HOTKEYS TO CANCEL SPRINT (pass-through) =====
; The ~* prefix lets the original key still go to the game.
~*w:: { ReleaseSprint() ; allow original W to pass through } return
~*a:: { ReleaseSprint() } return
~*s:: { ReleaseSprint() } return
~*d:: { ReleaseSprint() } return
~*LButton:: { ReleaseSprint() } return

; Note: C is special because your macros press C. We'll handle C via checked logic below:
~*c:: 
{
    ; If we are suppressing release (macro in progress), do nothing here so C reaches the game.
    ; Otherwise, release sprint as usual.
    global SuppressRelease
    if (!SuppressRelease) {
        ReleaseSprint()
    }
    ; Let the original C pass through
    return
}

; ===== E Macro: select X, press C, then mouse click =====
; Uses a flag to prevent the sprint-release from interfering with the C press.
$e::
{
    global SuppressRelease
    ; Prevent sprint release while the macro runs
    SuppressRelease := true

    ; Option A: send X then C with small pauses and a left click
    ; Use Down/Up to ensure the game registers the presses
    SendInput {x down}
    Sleep 30
    SendInput {x up}
    Sleep 30

    SendInput {c down}
    Sleep 30
    SendInput {c up}
    Sleep 60

    ; Do an actual mouse click (left)
    Click
    Sleep 80

    ; Safety small pause before re-enabling ReleaseSprint
    SuppressRelease := false
    return
}

; ===== Q Macro: send 1 (select primary weapon or item) =====
$q::
{
    ; Small pause to avoid interference
    Sleep 20
    SendInput 1
    return
}

; ===== Optional: allow toggling macro safety if needed =====
; Press Pause to toggle SuppressRelease manually for debugging
Pause::
{
    global SuppressRelease
    SuppressRelease := !SuppressRelease
    TrayTip, AHK Debug, SuppressRelease = %SuppressRelease%, 2
    return
}
