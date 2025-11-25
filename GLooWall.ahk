; ===== Ultimate Reliability Version =====
#InstallMouseHook
#InstallKeybdHook
Process, Priority, , High

; ===== E Macro: X + C + Left Click (Optimized) =====
e::
{
    ; Send X multiple times with reasonable delays
    SendInput, {sc2D}  ; Scancode for X
    Sleep, 50
    SendEvent, {sc2D}
    Sleep, 50
    SendInput, {sc2D}
    Sleep, 50
    
    ; Send C multiple times with reasonable delays
    SendInput, {sc2E}  ; Scancode for C
    Sleep, 50
}