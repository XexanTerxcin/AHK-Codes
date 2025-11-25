WheelUp::
    DllCall("mouse_event", "UInt", 0x0800, "Int", 0, "Int", 0, "UInt", 0, "UPtr", 0)
    Send 8
return

WheelDown::
    DllCall("mouse_event", "UInt", 0x0800, "Int", 0, "Int", 0, "UInt", 0, "UPtr", 0)
    Send 9
return
