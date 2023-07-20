$1::
    StartTime := A_TickCount
    While GetKeyState("1", "P")
    {
        if (A_TickCount - StartTime >= 4000)
        {
            Send 4
            Sleep 3000
        }
    }
return
