; ===== COMBINED: Sprint Toggle + Mouse Wheel Controls =====
#InstallMouseHook
#InstallKeybdHook
Process, Priority, , High


; ===== ULTRA-RELIABLE MOUSE WHEEL CONTROLS =====
WheelUp::
{
    SendInput, {0x0B} ; Scancode for 8
    return
}

WheelDown::
{
    SendInput, {0x0A} ; Scancode for 9
    return
}
