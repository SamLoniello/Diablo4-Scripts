#SingleInstance force

SetTitleMatchMode, 2 ; Set the title match mode to use substring matching

F1::
    IfWinExist, Diablo IV
    {
        WinActivate, Diablo IV
        WinWaitActive, Diablo IV

        Loop
        {
            PixelSearch, FoundX, FoundY, 625, 966, 645, 986, 0x0F1517, 10, Fast RGB
            if ErrorLevel = 0
            {
                ; Similar color found within 10-pixel radius
                SendInput, q
                Sleep 1000 ; Delay to allow the keypress to register
            }
            else
            {
                ; Color not found
            }

            ; Check every 2.3 seconds 
            Sleep 2300
        }
    }
    return

f2::Pause
    return
