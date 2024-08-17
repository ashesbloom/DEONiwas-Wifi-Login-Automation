# DEO NIWAS Hotspot Auto-Login Script

An AutoHotkey script that automates the login process for the DEO NIWAS hotspot and sets itself to run at system startup.

## Features

- 🌐 Opens the DEO NIWAS login page automatically
- 🖱️ Navigates through the login form
- 🚀 Positions cursor on the submit button
- 🔄 Self-configures to run at system startup

## Requirements

- Windows operating system
- [AutoHotkey v2](https://www.autohotkey.com/) installed
- Default browser with saved DEO NIWAS login credentials

## Setup

1. Download the `deo_niwas_login.ahk` script file
2. Ensure your default browser has saved your DEO NIWAS login credentials
3. Double-click the script file to run it

## Usage

Press `Alt + W` to trigger the auto-login process.

## How It Works

1. Checks if it's set up for system startup, if not, it self-configures
2. Opens the DEO NIWAS login page in your default browser
3. Waits for the page to load completely (by checking changes in pixels)
4. Navigates through the form fields
5. Positions the cursor on the submit button

## Customization

To change the hotkey, edit the `!w::` at the beginning of the script. 
Example: `^!l::` changes it to `Ctrl + Alt + L`

## Troubleshooting

- Ensure stable internet connection
- Verify saved credentials in your browser
- If the login window isn't found, an error message will display

## Security Note

This script uses your browser's saved credentials. Ensure your browser's security settings align with your preferences for storing login information.

## Disclaimer

Use at your own risk. The author is not responsible for any issues arising from its use.

## Support

For issues or questions, please open an issue in this repository.
