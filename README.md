Contrejour Color Scheme for Mutt
================================

Developed by Joseph Holsten <joseph@josephholsten.com>

This is a fork of [mutt-solarized-github][mutt-solarized-github],
modified to use [base16][base16] structure, with a more sanitized
approach to index colorization, and much more powerful
message highlighting.

[mutt-solarized-github]: https://github.com/altercation/mutt-colors-solarized
[base16]: http://chriskempson.com/projects/base16/

Installation
------------

1. Install base16-shell
1. Activate your preferred scheme:

    base16-solarized-light

1. Move the `mutt-colors-contrejour` directory into the same location as your
   `muttrc`. Alternately, you can copy just the version of the color scheme you
   will be using (see below for details).

2. Source the color scheme in your `muttrc`. Only one of the following, depending
   on the light or dark background you wish to use, and whether you want to use
   the native 16 colors of your terminal emulator or the approximation
   provided by the 256 color values. See note below for recommendations.

    source $MAILCONF/mutt-colors-contrejour/contrejour-dark.muttrc
    source $MAILCONF/mutt-colors-contrejour/contrejour-light.muttrc

Note: You can safely ignore the compile colors script and the template files.
They are used only for creating the actual color scheme files. If you want to
modify the color scheme or colors, you can use the compile script and template
to do so.

License
-------
Copyright (c) 2015 Joseph Holsten
Copyright (c) 2011 Ethan Schoonover

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
