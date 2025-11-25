; ===== Ultimate Reliability Version =====
#InstallMouseHook
#InstallKeybdHook
Process, Priority, , High

; --- Scroll Up -> 1 ---
WheelUp::
{
    SendInput, {sc02}
    return
}

; --- Scroll Down -> 3 ---
WheelDown::
{
    SendInput, {sc04}
    return
}

; --- Middle Button -> R (Super Reliable) ---
MButton::
{
    ; Block the original MButton event completely
    ; Send R through a different method
    SendInput, {sc13}
    SendEvent, {sc13}
    SendInput, {sc13}
    SendEvent, {sc13}
    SendInput, {sc13}
    return
}
