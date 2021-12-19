## linux-server-vnc-instrall

wget https://raw.githubusercontent.com/VJ-Ranga/linux-server-vnc-instrall/main/TVNC.sh && chmod +x TVNC.sh && ./TVNC.sh

To Start the VNC server (1366x768 = resolution)</br>
vncserver </br>
or </br>
vncserver -geometry 1366x768</br>
</br>
To Stop the VNC server (:1 = display number)</br>
vncserver -kill :1
