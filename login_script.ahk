!w:: {
    Run "http://deoniwas.in/login-hotspot.html"  ; Opens the login page in the default web browser
    Sleep 4000  ; Waits for 4 seconds to allow the page to load

    if !WinWait("LOGIN | DEO NIWAS", , 8)  ; Waits for the login window titled "LOGIN | DEO NIWAS" to appear within 8 seconds
    {
        MsgBox "Window not found!"  ; Displays an error message if the window is not found
        return  ; Exits the script
    }

    WinActivate "LOGIN | DEO NIWAS"  ; Activates the login window

    Sleep 1000  ; Waits for 1 second

    ; Your username goes here
    Send "your_username@deoniwas"  ; Types the username
    Sleep 500  ; Waits for 0.5 seconds

    Send "{Tab}"  ; Tabs to the password field
    Sleep 500  ; Waits for 0.5 seconds

    Send "^a{BackSpace}"  ; Selects and clears any existing text in the password field
    Sleep 200  ; Waits for 0.2 seconds

    prevClipboard := ClipboardAll()  ; Saves the current clipboard content to a variable

    ; Your password goes here
    A_Clipboard := "your_password"  ; Copies the password to the clipboard
    if !ClipWait(2)  ; Waits up to 2 seconds for the clipboard to update
    {
        MsgBox "Failed to copy password to clipboard"  ; Displays an error message if the clipboard update fails
        return  ; Exits the script
    }
    Send "^v"  ; Pastes the password from the clipboard
    Sleep 200  ; Waits for 0.2 seconds

    A_Clipboard := prevClipboard  ; Restores the previous clipboard content

    Sleep 500  ; Waits for 0.5 seconds

    Send "{Tab}"  ; Tabs to the submit button
    Sleep 500  ; Waits for 0.5 seconds

    Send "{Enter}"  ; Submits the login form
}
