# Update .env
Update the username and password in .env (torrents folder) from VPN provider service credentials.



Since the username and password is in plain text, we will encrypt it to secure that info from bad guys. 
# Encryption

cd to correct location. and encrypt .env file using ansible
```shell
cd $HOME/arr-stack-4-dummies/torrents
   ```

command to encrypt .env:
```shell
ansible-vault encrypt .env
```

For future: to decryp an encrypted file:
```shell
ansible-vault decrypt .env
```