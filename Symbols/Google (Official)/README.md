# Google's Material Design Icons - Symbols for AI

## Install Symbols Library:
Check out the [main symbols readme](https://github.com/danielhickman/MaterialDesign/tree/master/Symbols) for more information

## Create Updated File: 
* Download [Google's Icons](hhttps://github.com/google/material-design-icons), both releases and the working repo should work
* Download the ruby script from the main directory (requires a Ruby installation)
* Place it in the same directory as the the google/material-design-icons repo
* Open up terminal/command prompt and run `ruby ruby.rb` (takes optional argument of `"/svg/production/"` for switching to the production icons)
* Open `custom.svg` in AI
* Navigate to `Symbols` > `Symbols Libraries Menu` > `Save Symbol Library...`
* Save the file to either the folder for user symbols or the presets
* Open the file you just saved if you saved it in the folder for user symbols, restart Illustrator if you saved it in the presets
* Consider making a pull request


### Colors:
You may need an advanced text editor (ie Sublime Text 3 or Atom) or some programming skills to use the regular expressions.

Adding a fill attribute with a hex value on the elements that match this:

```js
(<path|<circle)(?!.*fill="none"|.*\n\s*<\/defs>)
```

And removing all old fills (matches fills with hex value that isn't grey 900, 212121) with this:

```js
 fill="#(?!212121)\w+"
```