# Templarian's Material Design Icons - Symbols for AI

## Install Symbols Library:
Check out the [main symbols readme](https://github.com/danielhickman/MaterialDesign/tree/master/Symbols) for more information

## Create Updated File: 
* [Custom Export](http://materialdesignicons.com/custom) > Export a Formatted List of Icons
* Enter Values:

*Start:* 
```
<?xml version="1.0" encoding="utf-8"?>
<svg version="1.1" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" xmlns:xlink="http://www.w3.org/1999/xlink">

```
*Loop:* 
```
<symbol id="{name}" author="{author}" transform="matrix(1 0 0 -1 12 12)">
<path d="{data}"/>
</symbol>
<use xlink:href="#{name}" width="24" height="24" x="0" y="0"/>


```
*End:* 
```
</svg>
```
*The extra enter lines make the source look neater, but don't matter once it's been made into symbols.*

* Rename `custom.txt` to `custom.svg` and open it in AI
* Navigate to `Symbols` > `Symbols Libraries Menu` > `Save Symbol Library...`
* Save the file to either the folder for user symbols or the presets
* Open the file you just saved if you saved it in the folder for user symbols, restart Illustrator if you saved it in the presets
* Consider making a pull request


### Colors:
Use this for the loop value to change their color make sure to replace the hex value (currently grey 900) with the color of your choosing.

*Loop:* 
```
<symbol id="{name}" author="{author}" transform="matrix(1 0 0 -1 12 12)">
<path fill="#212121" d="{data}"/>
</symbol>
<use xlink:href="#{name}" width="24" height="24" x="0" y="0"/>


```