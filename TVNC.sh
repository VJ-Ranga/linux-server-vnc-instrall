#!/bin/bash

echo ""
echo "---------------------------------------------------------------------------------------------";
echo "---------------------------------------------------------------------------------------------";
echo ""
echo "Using this script you can install the Xfce desktop environment and TightVNC server";
echo ""
echo "This script only works on Debian based distros(Debian,ubuntu,etc...)";
echo ""
echo "---------------------------------------------------------------------------------------------";
echo "---------------------------------------------------------------------------------------------";
echo ""
while true; do
    read -p "Do you wish to install this program?(y/n)" yn
    case $yn in
        [Yy]* ) apt update;

                echo ""
                echo "------------------------";
                echo "Successfully updated";
                echo "------------------------"; 
                echo ""

                apt install xfce4 xfce4-goodies;
                
                echo ""
                echo "---------------------------";
                echo "Xfce Successfully installed";
                echo "---------------------------";
                echo ""

                apt install tightvncserver;  

                echo ""
                echo "---------------------------------";
                echo "TightVNC Successfully installed";
                echo "---------------------------------";
                echo ""

echo ""
echo "---------------------------------------------------------------------------------------------";
echo "---------------------------------------------------------------------------------------------";
echo ""
echo "You can now enter a password for the TightVNC server";
echo ""
echo "Make sure to include a good security password for this";
echo ""
echo "---------------------------------------------------------------------------------------------";
echo "---------------------------------------------------------------------------------------------";
echo ""

                while true; do
                    read -p "Do you wish to go next step?(y/n)" yn
                    case $yn in
                        [Yy]* ) vncserver;

                                echo ""
                                echo "------------------------";
                                echo "password Successfully updated";
                                echo "------------------------";
                                echo ""

                                vncserver -kill :1

                                
                                mv ~/.vnc/xstartup ~/.vnc/xstartup.bak

                
cat >~/.vnc/xstartup <<EOF
#!/bin/bash
xrdb $HOME/.Xresources
startxfce4 &
EOF
chmod +x ~/.vnc/xstartup

echo ""

echo "select the operation"

echo "  1)Default "
echo "  2)1366x768"
echo "  3)1024x768"
echo "  4)1920×1080" 

read n
case $n in
  1) vncserver;;
  2) vncserver -geometry 1366x768;;
  3) vncserver -geometry 1024x768;;
  4) vncserver -geometry 1920×1080;;
  *) echo "invalid option";;
esac

echo ""
                                break;;
                        [Nn]* ) echo "Exit"; exit;;
                        * ) echo "Please answer yes or no.";;
                    esac
                done


                break;;
        [Nn]* ) echo "Exit";

echo ""
echo "---------------------------------------------------------------------------------------------";
echo "---------------------------------------------------------------------------------------------";
echo ""
echo "You have successfully installed the Xfce desktop environment and TightVNC server";
echo ""
echo "This command can be used to start and stop the VNC server.";
echo ""
echo "To Start the VNC server"
echo "vncserver or vncserver -geometry 1366x768"
echo ""
echo "To Stop the VNC server"
echo "vncserver -kill :1";

echo "---------------------------------------------------------------------------------------------";
echo "---------------------------------------------------------------------------------------------";
echo ""        
        
         exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
