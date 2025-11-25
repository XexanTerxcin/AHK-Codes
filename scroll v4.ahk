#NoEnv
#SingleInstance Force
SendMode Event
SetKeyDelay, 40, 40

; =====================================
; Scroll Wheel → Send 8 / 9 via scan code (global)
; =====================================

WheelUp::
    ; Send 8 using scan code 0x0B
    Send {0x0B}
Return

WheelDown::
    ; Send 9 using scan code 0x0A
    Send {SC0A}
Return
