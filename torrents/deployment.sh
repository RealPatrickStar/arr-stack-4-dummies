### Deployment Script
# Create media folders if they do not exit
echo "Creating dirs..."
sudo mkdir /mnt/media/tv /mnt/media/movies

# Ensure firewall port is open on the server for Plex
echo "Opening Plex UFW port"
sudo ufw allow 32400

# Pull down latest changes from git
echo "Pulling latest repo changes from GIT"
git pull https://github.com/RealPatrickStar/arr-stack-4-dummies.git

# Decode env file
echo "Decode .env secrets"
ansible-vault decrypt .env

# Deploy
docker compose up -d
echo "Deployment Complete"

