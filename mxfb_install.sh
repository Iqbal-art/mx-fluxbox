#this script will set up fluxbox on the MX installation
#right-click the downloaded script > Properties > Permissions
#and check the box Allow to run as a program
#then open a terminal is the same folder as the script
#and enter: sh mxfb_install.sh

--------------

#set up fluxbox

if [ ! -d "$HOME/.fluxbox" ]; then
   yad --text="Before running this script you must install FLUXBOX and IDESK. 
   
Exiting..." --title="Before starting!" --geometry=400x10 --timeout=5
fi

if [ ! -d "$HOME/.fluxbox" ]; then
exit
fi

wget https://github.com/jerry3904/mx-fluxbox/archive/master.zip -P ~/Downloads/

cd ~/Downloads/	

unzip -d ~/ master.zip

cd ~/

mv mx-fluxbox-master/ .fluxbox/ 

#set up idesk

mkdir ~/.idesktop/

cp ~/.fluxbox/components/idesk/fluxhelp.lnk ~/.idesktop/fluxhelp.lnk

cp ~/.fluxbox/components/idesk/.ideskrc ~/.ideskrc

cp ~/.fluxbox/components/.fehbg ~/.fehbg

#set up the conky

if [ ! -d "$HOME/.conky/MX-BritPanel/" ]; then
    mkdir -p "$HOME/.conky/MX-BritPanel"
fi

cp ~/.fluxbox/components/MX-BritPanel/conkyrc_fb ~/.conky/MX-BritPanel/conkyrc_fb

cp ~/.fluxbox/components/conky-startup.sh ~/.conky/conky-startup.sh

sleep 2

#finish
 
yad --text="To see the result: log out, select fluxbox from the pull-down menu in the upper right corner, and log back in." --title="All done!" --width=400 
