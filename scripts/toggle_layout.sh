# layouts=("setxkbmap -rules evdev -model evdev -layout us -variant altgr-intl &" "latam" "br")
# current_layout=$(setxkbmap -print | awk -F"+" '/xkb_symbols/ {print $2}')
# 
# # find current layout index
# for i in "${!layouts[@]}"; do
#   if [[ "${layouts[i]}" == "$current_layout" ]]; then
#     current_index=$i
#     break
#   fi
# done
# 
# # iterate through the layouts
# next_index=$(( (current_index + 1) % ${#layouts[@]} ))
# next_layout="${layouts[next_index]}"
# 
#     setxkbmap "$next_layout"
#     notify-send 'Current layout' ${next_layout} -t 1000 -u 'low' -a 'layout'
