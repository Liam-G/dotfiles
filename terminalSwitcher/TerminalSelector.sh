#if test $(wmctrl -l | grep "LiamTerminal" 2>&1 | wc -l) -eq 1; then
#	if test $(xdotool getwindowfocus getwindowname | grep "LiamTerminal" 2>&1 | wc -l) -eq 1; then
#		wmctrl -r "LiamTerminal" -b toggle,hidden
#	else
#		wmctrl -a "LiamTerminal"
#	fi
#else
#	xfce4-terminal --title=LiamTerminal
#fi
#echo "$(xdotool selectWindow | awk 'END{print}')" > /home/liam/scripts/terminalSwitcher/selectedWindow

if test $(wmctrl -l | grep "Selected Window" 2>&1 | wc -l) -eq 1; then
	wmctrl -r "Selected Window" -T "Deselected"
	wmctrl -r :SELECT: -T "Selected Window"
else
	wmctrl -r :SELECT: -T "Selected Window"
fi
