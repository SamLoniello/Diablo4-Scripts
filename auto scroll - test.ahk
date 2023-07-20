#Persistent
isPaused := true

F1::
    IfWinExist, Diablo IV
    {
        WinActivate, Diablo IV
        WinWaitActive, Diablo IV
        isPaused := false
        SetTimer, PixelSearchLoop, 1000
    }
return

F2::
    Suspend, Off ; Resume the script
    isPaused := false
return

PixelSearchLoop:
    IfWinExist, Diablo IV
    {
        PixelSearch, FoundX, FoundY, 610, 920, 645, 950, 0x0A0C0A, 10, Fast RGB ; Adjusted the coordinates
        if ErrorLevel = 0
        {
            ; Similar color found within 10-pixel radius
            Send {6}
            Sleep 50 ; Decreased the delay for faster response
        }
        Sleep 100 ; Delay between each pixel search
    }
    else
    {
        SetTimer, PixelSearchLoop, Off
        isPaused := true
    }
return

; Add the following hotkey definitions

; Suspends the script when Diablo IV is open
*y::
*o::
*p::
*l::
*m::
*j::
*Tab::
*Esc::
*n::
    IfWinActive, Diablo IV
    {
        Suspend
        isPaused := true
    }
return

; Terminates the script completely
*q::
    ExitApp
return
