# linux-server-vnc-instrall
wget https://github.com/VJ-Ranga/linux-server-vnc-instrall/archive/refs/heads/main.zip &amp;&amp; apt install unzip &amp;&amp; unzip main.zip &amp;&amp; cd linux-server-vnc-instrall-main &amp;&amp; chmod +x TVNC.sh &amp;&amp; ./TVNC.sh

To Start the VNC server
evncserver 
or (1366x768 resolution)
vncserver -geometry 1366x768

To Stop the VNC server (:1 = display number)
vncserver -kill :1
