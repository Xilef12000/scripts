sudo apt-get install webp -y
cd /usr/share/thumbnailers
sudo touch webp.thumbnailer
# "sudo bash -c" is needed to run the redirection with sudo privileges
sudo bash -c " cat <<< '
[Thumbnailer Entry]
Exec=/usr/bin/dwebp %i -scale 100 100 -o %o
MimeType=image/x-webp;image/webp;
' > webp.thumbnailer"
#restart nautilus after quitting
nautilus -q