if test $(wmctrl -l | grep -o "$(printf 0x0%x "$(cat /home/liam/scripts/terminalSwitcher/selectedWindow | tr -d '\n')")" | wc -l) -gt 0; then
	if test $(xdotool getwindowfocus) == $(cat /home/liam/scripts/terminalSwitcher/selectedWindow); then
		wmctrl -i -r $(cat /home/liam/scripts/terminalSwitcher/selectedWindow | tr -d '\n') -b toggle,hidden
	else
		wmctrl -i -a $(cat /home/liam/scripts/terminalSwitcher/selectedWindow | tr -d '\n')
	fi
else
	xfce4-terminal
	echo "$(xdotool getwindowfocus | awk 'END{print}')" > /home/liam/scripts/terminalSwitcher/selectedWindow
fi
