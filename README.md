# Lospec Theme for NodeBB


This is the current NodeBB theme for the Lospec Forums. https://Lospec.com/forums.

It uses slick as the base theme: https://github.com/pichalite/nodebb-theme-slick

### Installation

1. Install NodeBB.

2. `npm install git+https://github.com/lospec/nodebb-theme-lospec.git`

3. Activate theme under Extend > Plugins 

4. Rebuild and Restart the server (from overview)


### Development

To make changes to HTML, you must modify the `.tpl` files in the templates folder. If a file does not exist, you must first copy it from the slick theme. If it doesn't exist on the slick theme, it inherits it from Persona (I think)

CSS can be edited in `theme.less`.

You will definitely want to install grunt (`npm install grunt -g`), then run `grunt` in the nodebb folder, this will watch your files for changes and recompile them.

To add a widget section you need to add HTML into a template (see categories.tpl), then add it to the list of defined widget areas in lib/theme.js.


