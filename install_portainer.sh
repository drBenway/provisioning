#!/bin/bash
mkdir ~/portainer
docker volume create portainer_data
docker run -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v ~/portainer:/data/portainer/portainer

# generate icon for desktop
echo #!/user/bin/env xdg-open >> $HOME/Desktop/Portainer.desktop
echo [Desktop Entry] >> $HOME/Desktop/Portainer.desktop
echo Comment="Docker GUI" >> $HOME/Desktop/Portainer.desktop
echo Terminal=true >> $HOME/Desktop/Portainer.desktop
echo Name=Portainer >> $HOME/Desktop/Portainer.desktop
echo Exec=docker run -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v ~/portainer:/data/portainer/portainer >> $HOME/Desktop/Portainer.desktop
echo Type=Application >> $HOME/Desktop/Portainer.desktop
echo Categories=Application; >> $HOME/Desktop/Portainer.desktop