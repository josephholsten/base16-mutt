#!/bin/sh
# ---------------------------------------------------------------------
# CONTREJOUR color values
# ---------------------------------------------------------------------
#
# CONTREJOUR HEX     16/8 TERMCOL  XTERM/HEX   L*A*B      RGB         HSB
# ---------- ------- ---- -------  ----------- ---------- ----------- -----------
# base00     #fdf6e3 15/7 brwhite  230 #ffffd7 97  00  10 253 246 227  44  10  99
# base01     #eee8d5  7/7 white    254 #e4e4e4 92 -00  10 238 232 213  44  11  93
# base02     #93a1a1 14/4 brcyan   245 #8a8a8a 65 -05 -02 147 161 161 180   9  63
# base03     #839496 12/6 brblue   244 #808080 60 -06 -03 131 148 150 186  13  59
# base04     #657b83 11/7 bryellow 241 #626262 50 -07 -07 101 123 131 195  23  51
# base05     #586e75 10/7 brgreen  240 #585858 45 -07 -07  88 110 117 194  25  46
# base06     #073642  0/4 black    235 #262626 20 -12 -12   7  54  66 192  90  26
# base07     #002b36  8/4 brblack  234 #1c1c1c 15 -12 -12   0  43  54 193 100  21
# base08     #dc322f  1/1 red      160 #d70000 50  65  45 220  50  47   1  79  86
# base09     #cb4b16  9/3 brred    166 #d75f00 50  50  55 203  75  22  18  89  80
# base0a     #b58900  3/3 yellow   136 #af8700 60  10  65 181 137   0  45 100  71
# base0b     #859900  2/2 green     64 #5f8700 60 -20  65 133 153   0  68 100  60
# base0c     #2aa198  6/6 cyan      37 #00afaf 60 -35 -05  42 161 152 175  74  63
# base0d     #268bd2  4/4 blue      33 #0087ff 55 -10 -45  38 139 210 205  82  82
# base0e     #6c71c4 13/5 brmagenta 61 #5f5faf 50  15 -45 108 113 196 237  45  77
# base0f     #d33682  5/5 magenta  125 #af005f 50  65 -05 211  54 130 331  74  83

NAME_RE="(joseph|holsten|jholsten|josephholsten|joseph anthony pasquale holsten)"
MAIL_RE="josephholsten.com"

cat > palette_dark.tmp <<SETPALETTEDARK
{{base07}},color234,brightblack,
{{base06}},color235,black,
{{base05}},color239,brightgreen,
{{base04}},color240,brightyellow,
{{base03}},color244,brightblue,
{{base02}},color245,brightcyan,
{{base01}},color187,white,
{{base00}},color230,brightwhite,
{{base0a}},color136,yellow,
{{base09}},color166,brightred,
{{base08}},color124,red,
{{base0f}},color125,magenta,
{{base0e}},color61,brightmagenta,
{{base0d}},color33,blue,
{{base0c}},color37,cyan,
{{base0b}},color64,green,
{{black}},black,black,
{{default}},default,default,
{{name_re}},${NAME_RE},${NAME_RE},
{{mail_re}},${MAIL_RE},${MAIL_RE},
SETPALETTEDARK

cat > palette_light.tmp <<SETPALETTELIGHT
{{base00}},color234,brightblack,
{{base01}},color235,black,
{{base02}},color239,brightgreen,
{{base03}},color240,brightyellow,
{{base04}},color244,brightblue,
{{base05}},color245,brightcyan,
{{base06}},color187,white,
{{base07}},color230,brightwhite,
{{base0a}},color136,yellow,
{{base09}},color166,brightred,
{{base08}},color124,red,
{{base0f}},color125,magenta,
{{base0e}},color61,brightmagenta,
{{base0d}},color33,blue,
{{base0c}},color37,cyan,
{{base0b}},color64,green,
{{black}},black,black,
{{default}},default,default,
{{name_re}},${NAME_RE},${NAME_RE},
{{mail_re}},${MAIL_RE},${MAIL_RE},
SETPALETTELIGHT

MUTTSOURCE="mutt-colors-contrejour-template.muttrc"
MUTTTARGET="mutt-colors-contrejour"
MUTTSUFFIX=".muttrc"
rm "$MUTTTARGET-dark-256$MUTTSUFFIX"
rm "$MUTTTARGET-dark-16$MUTTSUFFIX"
rm "$MUTTTARGET-light-256$MUTTSUFFIX"
rm "$MUTTTARGET-light-16$MUTTSUFFIX"

awk 'NR==FNR {a[$1]=$2;next} {for ( i in a) gsub(i,a[i])}1' FS="," \
    palette_dark.tmp $MUTTSOURCE > "$MUTTTARGET-dark-256$MUTTSUFFIX"
awk 'NR==FNR {a[$1]=$3;next} {for ( i in a) gsub(i,a[i])}1' FS="," \
    palette_dark.tmp $MUTTSOURCE > "$MUTTTARGET-dark-16$MUTTSUFFIX"
awk 'NR==FNR {a[$1]=$2;next} {for ( i in a) gsub(i,a[i])}1' FS="," \
    palette_light.tmp $MUTTSOURCE > "$MUTTTARGET-light-256$MUTTSUFFIX"
awk 'NR==FNR {a[$1]=$3;next} {for ( i in a) gsub(i,a[i])}1' FS="," \
    palette_light.tmp $MUTTSOURCE > "$MUTTTARGET-light-16$MUTTSUFFIX"

rm palette_light.tmp
rm palette_dark.tmp
