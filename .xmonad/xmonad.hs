import XMonad
import XMonad.Layout.MouseResizableTile

main = xmonad defaultConfig
	{ terminal = "termite"
	, layoutHook = myLayout
	, startupHook = myStartupHook
	, normalBorderColor = "#000000"
	, focusedBorderColor = "#0088CC"
	, borderWidth = 20

	}

myLayout = mouseResizableTile{draggerType = BordersDragger}

myStartupHook :: X ()
myStartupHook =
  spawn
  	  "compton"
