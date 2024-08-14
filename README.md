# DEO NIWAS Hotspot Auto-Login Script

This AutoHotkey script automates the login process for the DEO NIWAS hotspot login page.

## Features

- 🌐 Automatically opens the login page in your default web browser
- 🖊️ Fills in your username and password
- 🚀 Submits the login form

## Technologies Used

- [AutoHotkey v2](https://www.autohotkey.com/) - A scripting language for Windows that allows users to easily create small to complex scripts for all kinds of tasks.

## Prerequisites

1. [AutoHotkey v2](https://www.autohotkey.com/) installed on your Windows machine

## Setup

1. Clone this repository or download the script file.
2. Open the `deo_niwas_login.ahk` file in a text editor.
3. Edit the script to add your username and password:
   ```autohotkey
   ; Your username goes here
   Send "your_username@deoniwas"
   
   ; Your password goes here
   A_Clipboard := "your_password"
   ```
4. Save the file after making these changes.

## Usage

1. Double-click the `deo_niwas_login.ahk` file to run the script.
2. Press `Win + W` to trigger the auto-login process.

## How It Works

1. The script opens the DEO NIWAS login page in your default web browser.
2. It waits for the login window to appear.
3. Once the window is active, it automatically fills in your username and password.
4. Finally, it submits the login form.

## Customization

To change the hotkey, modify the `!w::` at the beginning of the script. For example, `^!l::` would change it to `Ctrl + Alt + L`.

## Troubleshooting

- If the script fails to find the login window, it will display an error message.
- Make sure your internet connection is stable before running the script.
- Adjust the sleep timers if the script is running too fast or slow for your computer.

## AutoHotkey Documentation

AutoHotkey is a powerful scripting language for Windows. Here are some key concepts used in this script:

- `Run`: Runs an external program or opens a file/URL.
- `WinWait`: Waits for a specified window to exist.
- `WinActivate`: Activates (gives focus to) a window.
- `Send`: Sends simulated keystrokes to the active window.
- `Sleep`: Waits for a specified amount of time before continuing.
- `ClipboardAll()`: Creates a backup of the entire clipboard.
- `A_Clipboard`: A built-in variable that retrieves or sets the contents of the clipboard.

For more detailed information, visit the [AutoHotkey documentation](https://www.autohotkey.com/docs/v2/).

## Security Note

⚠️ This script stores your password in plain text. Make sure to keep the script file secure and do not share it with others.

## Disclaimer

Use this script at your own risk. The author is not responsible for any issues that may arise from its use.

## Support

If you encounter any problems or have any questions, please open an issue in this repository.
