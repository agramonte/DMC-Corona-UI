# Overview #

The DMC Corona Widget library is collection of advanced widgets for the Corona SDK. They can be used in any size or type of application.

The module architecture is heavily object-oriented, but each module can be used with any style of coding. The OO-nature ensures that the modules can be easily re-used or modified as necessary.


**Documentation & Examples**

There are examples and documentation available for the modules. Look in the `examples` folder for available examples which can be run directly in the Corona SDK. Documentation is online at: [docs.davidmccuskey.com](http://docs.davidmccuskey.com/display/docs/DMC+Corona+Widgets)


**Questions or Comments**

If you have questions or comments you can either (preferred order):
* send me an email: corona-lib at davidmccuskey com
* send a PM @ coronalabs.com: @dmccuskey
* post an issue here on github
* post to the Corona forums: http://forums.coronalabs.com


**Issues**

If you have any issues, please post them here on github: [dmc-corona-widgets issues](http://github.com/dmccuskey/dmc-corona-widgets/issues)




## Installation & Use ##

For easy installation, copy the following items to the same location anywhere in your Corona project:

* The entire `dmc_widgets` folder
* `dmc_widgets.lua`


If you placed both items at the root-level, the widgets module would be imported like so:

```lua
local Widgets = require 'dmc_widgets'

local button = Widgets.newButton( params )
...
```


The library has been designed to give a lot of flexibility where it is stored in your project. For more information regarding the library and individual widgets, visit [DMC Corona Widgets](http://docs.davidmccuskey.com/display/docs/DMC+Corona+Widgets).



## Current Modules ##

* [newButton](#newButton)

  Advanced buttons for your applications. [Read more...](#newButton)

* [newButtonGroup](#newButtonGroup)

  Logical groups for `toggle` or `radio` buttons. [Read more...](#newButtonGroup)

* [tableView Widget](#newTableView)

  Modern version of a table scroller. [Read more...](#newTableView)


<a name="newButton"></a>
### Widget: newButton ###

The `Widgets.newButton` constructor is used to create new buttons.

Buttons are very configurable and can be modified on-the-fly at any point in your application.

Button types can be one of:
* **push** button (a typical momentary button)
* **toggle** button (a typical on-off button)
* **radio** button

And the visual backgrounds can be created from:
* a **9-slice** image sheet
* plain **images** or those from an image sheet
* **native shapes** from the Corona SDK
* or a plain, **text-only** button

Combined with `Widgets.newButtonGroup`, `toggle` or `radio` buttons can be put into logical groups and can react to changes to other buttons in the group.


**Documentation**

http://docs.davidmccuskey.com/display/docs/newButton


**Examples**

There are examples in the folder `examples/button-widget/` for each of the button types.



<a name="newButtonGroup"></a>
### Widget: newButtonGroup ###

The `Widgets.newButtonGroup` constructor is used to create groups for buttons.

There are two types of groups `radio` and `toggle`. The one to use depends on the types of buttons added to the group.


**Documentation**

http://docs.davidmccuskey.com/display/docs/newButtonGroup


**Examples**

There are examples in the folder `examples/button-widget/` for each of the button groups.



<a name="newTableView"></a>
### Widget: newTableView ###

This widget brings the scroller into the modern world. Advanced features include:

* separate onRender/onUnrender method calls
  Plays nicely with other Lua OO-libraries

* y-offset value
  For use with moving headers, etc (eg, iOS Safari header/footer)

* Auto-masking
  Can have table view which is smaller than device screen.

* takeFocus/returnFocus
  allows the scroller to get first chance at the touch, then returned to row. this gives more responsive scrolling and stops initial row highlighting when scrolling.


## License ##

The MIT License (MIT)

Copyright (c) 2013-2014 David McCuskey

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
