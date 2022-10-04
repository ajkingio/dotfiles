# Run URxvt's daemon
urxvtd -o -q -f

# Disable loud beep
xset b off

# Start udiskie
udiskie &

# Merge .Xresources
xrdb -merge ~/.config/X11/.Xresources

# Keep everything below at end of file.
exec i3
