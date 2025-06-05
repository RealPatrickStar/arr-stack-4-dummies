
lsblk -o NAME,FSTYPE,SIZE,MOUNTPOINT,LABEL,UUID
sudo mkdir -p /mnt/external_hard_drive
sudo apt install ntfs-3g -y
sudo mount -t ntfs-3g /dev/sdX1 /mnt/external_share
lsblk -o NAME,FSTYPE,SIZE,MOUNTPOINT,LABEL,UUID
sudo mount -t ntfs-3g /dev/sdb1 /mnt/external_hard_drive
sudo chown -R batman:batman /mnt/external_hard_drive/
sudo blkid /dev/sdb1
sudo nano /etc/fstab
sudo systemctl daemon-reexec
sudo du -h --max-depth=1 /mnt/external_hard_drive
df -h /mnt/external_hard_drive
sudo nano /etc/samba/smb.conf
sudo mkdir /mnt/external_hard_drive/ManualMovies
sudo mkdir /mnt/external_hard_drive/ManualTV
sudo nano /etc/samba/smb.conf
sudo chown -R batman:batman /mnt/external_hard_drive/ManualMovies
sudo chown -R batman:batman /mnt/external_hard_drive/ManualTV
sudo chmod -R 775 /mnt/external_hard_drive/ManualMovies
sudo chmod -R 775 /mnt/external_hard_drive/ManualTV