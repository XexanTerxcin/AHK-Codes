; ===== Replace Ctrl+Alt+R with F5 =====

; ===== Hotkey for = key =====
=::
{
    ; Left mouse click + s
    Click
    Send "s"
    Sleep 60
    
    ; Use F5 instead of Ctrl+Alt+R (which now sends Ctrl+Alt+R)
    Send "{F5}"
    Sleep 1000
    return
}