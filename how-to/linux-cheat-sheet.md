# Basic commands

```bash
# DIR Navigation

#cd parent
cd .. 

#cd home direcotry
cd ~

# cd root
cd /

#create folder
mkdir

#  delete everything in a folder
rm -rfv *


# list
ls

# list all including hidden
ls -a

# ansible encryption
ansible-vault decrypt .env
ansible-vault encrypt .env

# running .sh
bash deployment.sh

# print
echo "hello"

# firewall allow
sudo ufw allow <port-number>

# string manipulation
 | grep 'name'

history | grep "docker"

# for loop versions
for i in {1..10};do mkdir "penispump${i}"; done
mkdir penispump{1..10}
```

