# Base16 Color Scheme for Mutt

Developed by Joseph Holsten <joseph@josephholsten.com>

This is a mutt color scheme designed to take full advantage of
[base16](http://chriskempson.com/projects/base16/) colors

It was originally a fork of
[mutt-solarized-github](https://github.com/altercation/mutt-colors-solarized),
modified to use base16 structure, with a more sanitized approach to
index colorization, and much more powerful message highlighting. But it
has been completely rewritten multiple times to the point that its
origins are hardly recognisable.

## Installation

1.  Install base16-shell
2.  Activate your preferred scheme:

    base16-solarized-light

3.  Move the `base16-mutt` repo into the same location as
    your `muttrc`. Alternately, you can copy just the color scheme file.

4.  Source the color scheme in your `muttrc`.

    source $MAILCONF/base16-mutt/base16.muttrc

## License

Copyright (c) 2015-2017 Joseph Holsten
Copyright (c) 2011 Ethan Schoonover

Permission is hereby granted, free of charge, to any person obtaining a
copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be included
in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
