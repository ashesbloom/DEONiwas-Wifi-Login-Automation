; Hotkey to trigger the script manually, if needed
!w::{

    ; Define the startup folder path
    startupFolder := A_Startup
    
    ; Define the path to the current script's executable
    exePath := A_ScriptFullPath
    exeName := RegExReplace(A_ScriptName, "\.ahk$", ".exe")
    
    ; Check if the executable already exists in the startup folder
    if !FileExist(startupFolder "\" exeName)
    {
        ; Compile the script to an executable
        RunWait(A_AhkPath " /in " exePath " /out " exeName, , "Hide")

        ; Copy the compiled executable to the startup folder
        FileCopy exeName, startupFolder "\" exeName
    }

    url := "http://deoniwas.in/login-hotspot.html"
    windowWaitTimeout := 8000  ; Maximum time to wait for the login window to appear (in milliseconds)
    tabDelay := 100  ; Delay for each tab key press (in milliseconds)
    downArrowDelay := 50  ; Delay for down arrow key press (in milliseconds)
    enterDelay := 500  ; Delay for enter key press (in milliseconds)
    
    ; Open the login page in the default web browser
    Run url
    
    ; Wait for the browser window to appear
    if !WinWait("LOGIN | DEO NIWAS",, windowWaitTimeout / 1000)
    {
        MsgBox "Window not found!"  ; Displays an error message if the window is not found
        return  ; Exits the script
    }
    
    ; Ensure the window is active
    WinActivate "LOGIN | DEO NIWAS"
    
    ; Wait for a specific pixel to change (indicating page load completion)
    Loop
    {
        ; Check for a pixel color that indicates the page has loaded
        if !PixelSearch(&FoundX, &FoundY, 100, 100, 200, 200, 0xFFFFFF, 3)
            break  ; Exit loop if the pixel color is found
        Sleep 1000  ; Wait 1000 ms before checking again
    }
    
    ; Proceed with the rest of the script
    Sleep tabDelay
    Send "{Tab}"  ; Tabs to the password field
    Sleep tabDelay
    Send "{Down}"  ; Sends the down arrow key
    Sleep downArrowDelay
    Send "{Down}"  ; Sends the down arrow key again
    Send "{Enter}"  ; Selects the password field
    Sleep enterDelay
    Send "{Tab}"  ; Tabs to the submit button
    Sleep tabDelay
    Send "{Tab}"  ; Tabs to the submit button again
    Sleep tabDelay
    
    return  ; Exits the script
}
