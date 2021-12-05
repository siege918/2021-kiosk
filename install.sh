apt-get update
apt-get upgrade

sudo apt-get install --no-install-recommends \
xserver-xorg x11-xserver-utils xinit openbox \
libgtk-3-0 chromium-browser

cat scripts/autostart > /etc/xdg/openbox/autostart

useradd -m -s /bin/bash kiosk

su kiosk

echo "[[ -z \$DISPLAY && \$XDG_VTNR -eq 1 ]] && startx -- -nocursor" \
>> /home/kiosk/.bashprofile

git clone https://github.com/siege918/intellistar-emulator ./dependency/intellistar-emulator