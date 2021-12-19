# linux-server-vnc-instrall
Using this script you can install the Xfce desktop environment and TightVNC serve. This script only works on Debian based distros.

## Run with:

    wget https://raw.githubusercontent.com/VJ-Ranga/linux-server-vnc-instrall/main/TVNC.sh && chmod +x TVNC.sh && ./TVNC.sh


### To Start the VNC server </br>

    vncserver

or (1366x768 = resolution)</br>

    vncserver -geometry 1366x768</br>

</br>
## To Stop the VNC server (:1 = display number) </br>

    vncserver -kill :1

