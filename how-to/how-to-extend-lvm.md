# How to Extend LVM group

```bash
#Check file system lvm 
df -h | grep lv

#Extend LVM group
sudo lvextend -l +100%FREE /dev/mapper/ubuntu--vg-ubuntu--lv

#Resize mount point
sudo resize2fs /dev/mapper/ubuntu--vg-ubuntu--lv
```