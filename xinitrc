userresources=$HOME/.Xdefaults
usermodmap=$HOME/.Xmodmap

# merge in defaults and keymaps
if [ -f $userresources ]; then
    xrdb -merge $userresources
fi

if [ -f $usermodmap ]; then
    xmodmap $usermodmap
fi

feh --bg-scale ~/.backgrounds/tiger.jpg

killall xcompmgr
xcompmgr -d :0 &

/usr/bin/pulseaudio -k
/usr/bin/pulseaudio &

tint2 &

# HP Pavilion PV7 touchpad tuning
# http://thegnar.org/sync/?p=207
/usr/bin/synclient TapButton1=1 TapButton2=0 TapButton3=0 LBCornerButton=2 RBCornerButton=0 LTCornerButton=2 RTCornerButton=3 VertEdgeScroll=0 VertEdgeScroll=0 HorizEdgeScroll=0 CornerCoasting=0 VertTwoFingerScroll=1 HorizTwoFingerScroll=1 PalmDetect=0 EmulateTwoFingerMinW=100 AreaBottomEdge=3900

exec /usr/bin/ssh-agent openbox
