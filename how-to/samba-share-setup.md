  414  sudo apt install samba -y
  415  ls -ld /mnt/media/media
  416  sudo chmod 777 /mnt/media/media
  417  sudo nano /etc/samba/smb.conf
  418  sudo smbpasswd -a batman
  419  sudo systemctl enable smbd
  420  sudo systemctl enable nmbd
  421  sudo systemctl restart smbd
  422  sudo systemctl restart nmbd


  config :

[share]
path = /mnt/media/media
browseable = yes
read only = no
guest ok = no


[share]
path = /mnt/media/media
browseable = yes
read only = no
guest ok = yes