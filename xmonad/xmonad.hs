import XMonad

import XMonad.Util.EZConfig
import XMonad.Util.Ungrab

import XMonad.Hooks.EwmhDesktops

import XMonad.Hooks.DynamicLog
import XMonad.Hooks.StatusBar
import XMonad.Hooks.StatusBar.PP


main :: IO ()
main = xmonad
     . ewmhFullscreen
     . ewmh
     . withEasySB (statusBarProp "xmobar" (pure def)) defToggleStrutsKey
     $ myConfig

myConfig = def
    { modMask = mod4Mask -- rebind mod to super key
    , terminal = "st -f \"FiraCode Nerd Font:size=10\""
    , startupHook = myStartupHook
    }
  `additionalKeysP`
    [ ("M-C-s", unGrab *> spawn "scrot -s"          )
    , ("M-f", spawn "firefox"                       )
    ]

myStartupHook = do
    spawn "pgrep -u $USER trayer >/dev/null || trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --width 10 --transparent true --tint 0x5f5f5f --height 18"
    spawn "nm-applet"
    spawn "feh --bg-scale /home/moorts/Pictures/vaporwave.jpg"
