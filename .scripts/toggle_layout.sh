curr=$(setxkbmap -print | awk -F"+" '/xkb_symbols/ {print $2}')
usl='us'
lataml='latam'

if [ "$usl" = "$curr" ]; then
    setxkbmap latam
else
    setxkbmap us
fi
