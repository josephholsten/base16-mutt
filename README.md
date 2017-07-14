Contrejour Colorscheme for Mutt
==============================

Developed by Joseph Holsten <joseph@josephholsten.com>

This is a fork of [mutt-solarized-github][mutt-solarized-github], modified to use [base16][base16] structure, with a more
sanitized approach to index colorization, and much more powerful message highlighting.

[solarized]: http://ethanschoonover.com/solarized
[mutt-solarized-github]: https://github.com/altercation/mutt-colors-solarized
[base16]: http://chriskempson.com/projects/base16/

Installation
------------

1. Move the `mutt-colors-contrejour` directory into the same location as your
   muttrc. Alternately, you can copy just the version of the colorscheme you
   will be using (see below for details).

2. Source the colorscheme in your muttrc. Only one of the following, depending
   on the light or dark background you wish to use, and whether you want to use
   the native 16 colors of your terminal emulator or the approximatation
   provided by the 256 color values. See note below for recommendations.

    source $MAILCONF/mutt-colors-contrejour/mutt-colors-contrejour-dark-16.muttrc
    source $MAILCONF/mutt-colors-contrejour/mutt-colors-contrejour-light-16.muttrc
    source $MAILCONF/mutt-colors-contrejour/mutt-colors-contrejour-dark-256.muttrc
    source $MAILCONF/mutt-colors-contrejour/mutt-colors-contrejour-light-256.muttrc

Note: You can safely ignore the compile colors script and the template file.
They are used only for creating the actual colorscheme files. If you want to
modify the colorscheme or colors, you can use the compile script and template
to do so.

Which Variation?
----------------

See the [Solarized homepage][solarized] for screenshots which will help you
select either the light or dark background.

A thornier question is whether to use the 16 color version or the 256 color
version. I have spent a great deal of time refining this colorscheme and for
the most accurate experience I recommend that you set your terminal emulator to
use the Solarized colorvalues with the 16 color mutt colorschemes in this
distribution. Terminal colorschemes/values are available at the homepage linked
to above.

The 256 color versions provide an approximate experience of the colorscheme in
most regards, though the carefully selected monotones are crudely replaced by
neutral tones.

The Values
----------

L\*a\*b values are canonical (White D65, Reference D50), other values are
matched in sRGB space.

    CONTREJOUR HEX     16/8 TERMCOL  XTERM/HEX   L*A*B      sRGB        HSB
    ---------- ------- ---- -------  ----------- ---------- ----------- -----------
    base00     #fdf6e3 15/7 brwhite  230 #ffffd7 97  00  10 253 246 227  44  10  99
    base01     #eee8d5  7/7 white    254 #e4e4e4 92 -00  10 238 232 213  44  11  93
    base02     #93a1a1 14/4 brcyan   245 #8a8a8a 65 -05 -02 147 161 161 180   9  63
    base03     #839496 12/6 brblue   244 #808080 60 -06 -03 131 148 150 186  13  59
    base04     #657b83 11/7 bryellow 241 #626262 50 -07 -07 101 123 131 195  23  51
    base05     #586e75 10/7 brgreen  240 #585858 45 -07 -07  88 110 117 194  25  46
    base06     #073642  0/4 black    235 #262626 20 -12 -12   7  54  66 192  90  26
    base07     #002b36  8/4 brblack  234 #1c1c1c 15 -12 -12   0  43  54 193 100  21
    base08     #dc322f  1/1 red      160 #d70000 50  65  45 220  50  47   1  79  86
    base09     #cb4b16  9/3 brred    166 #d75f00 50  50  55 203  75  22  18  89  80
    base0a     #b58900  3/3 yellow   136 #af8700 60  10  65 181 137   0  45 100  71
    base0b     #859900  2/2 green     64 #5f8700 60 -20  65 133 153   0  68 100  60
    base0c     #2aa198  6/6 cyan      37 #00afaf 60 -35 -05  42 161 152 175  74  63
    base0d     #268bd2  4/4 blue      33 #0087ff 55 -10 -45  38 139 210 205  82  82
    base0e     #6c71c4 13/5 brmagenta 61 #5f5faf 50  15 -45 108 113 196 237  45  77
    base0f     #d33682  5/5 magenta  125 #af005f 50  65 -05 211  54 130 331  74  83

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
