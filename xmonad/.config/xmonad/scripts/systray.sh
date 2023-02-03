#! /bin/sh

sleep 1 && killall trayer
trayer --edge top\
       --align right\
       --SetDockType true\
       --SetPartialStrut true\
       --expand true\
       --height 20\
       --distance 4\
       --distancefrom right\
       --transparent true\
       --tint black\
       --widthtype request\
       --monitor 0\
       --monitor 1\
       --margin 0\
