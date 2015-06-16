# Material Design Icons- Symbols for AI

### Install Symbols Library:
1. Download the .AI file
2. Move the .AI file to a similar path to `C:\Users\{Username}\AppData\Roaming\Adobe\Adobe Illustrator 18 Settings\en_US\x64\Symbols` replacing versions and `{Username}` with your correct values
3. Navigate to `Symbols` > `Symbols Libraries Menu` > `Other Library` and select the file

### Create Updated File: 
* [Custom Export](http://materialdesignicons.com/custom) > Export a Formatted List of Icons
* Enter Values:
 
*Start:* (nothing)
*Loop:* `{name},`
*End:* (nothing)

* Download the File
* Remove extra comma at the end of `custom.txt` (As wells as any extra newlines)
* Enter Values:

*Start:* 
```
<?xml version="1.0" encoding="utf-8"?>
<svg version="1.2" baseProfile="tiny" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 24 24" xml:space="preserve">

```
*Loop:* 
```
<path id="{name}" fill="#202020" d="{data}"/>

```
*End:* `</svg>`

* Rename the last `custom.txt` to `custom.svg` and open it in AI
* Download the `.exe` script
* Add the action to your actions in Illustrator
* Set the hotkey for the action to be `F2`
* Move the script to the same directory as the custom.txt
* Select the lower most, (alphabetically first) layer, probably `account`
* Hit F3 and wait

**Or**

Replace " Download the `.exe` script" with the following to run it through AutoIt (recommened but a large install): 7. Install [AutoIt](https://www.autoitscript.com/site/) and download the `.au3` script

**Notes:**
* Don't press any keys or mouse buttons, it will affect the script.
* The script automatically exists after 60 seconds of not doing anything.
* You can force close the script by killing `script.exe (32 bit)` or using `Tools` > `Stop Executing`
* If your computer is slow, you may need to increase the `sleep()` functions to something higher. It is currently at 1000 milliseconds between UI opperations for about one symbol for every 3 seconds.
* Symbols and custom.svg are both with Material Gray 900 fills (My personal preference)
