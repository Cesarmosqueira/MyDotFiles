for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
  MONITOR=$m polybar -q top -c ~/.config/polybar/cuts/config.ini
done
