#!/bin/bash
# OpenVAS installation for different distros
# Written by Corey Batiuk

#Distro Specific OpenVAS Installation
if [ -f "/etc/os-release" ]; then
        source /etc/os-release
fi

#Ubuntu 18.04
if [ ID=ubuntu ]; then

        #OpenVAS Installation:
        add-apt-repository ppa:mrazavi/openvas -y
        apt update -y
        apt upgrade -y
        apt install sqlite3 openvas9 -y
        apt install texlive-latex-extra --no-install-recommends -y
        apt install texlive-fonts-recommended --no-install-recommends -y
        apt install libopenvas9-dev
        greenbone-nvt-sync
        greenbone-scapdata-sync
        greenbone-certdata-sync
        systemctl restart openvas-scanner
        systemctl restart openvas-manager
        systemctl restart openvas-gsa
        openvasmd --rebuild --progress --verbose

#Kali
elif [ ID=kali ]; then

        #OpenVAS Installation:
        apt install openvas
        openvas-setup
        openvasmd –user=admin –new-password=admin #Setting the same (insecure) password as the Ubuntu install

else
        echo "OpenVAS setup for this OS not supported yet."
fi
