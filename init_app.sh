#!bin/bash

echo "Clearing existing cronjobs"
crontab -u $USER -r

echo "Adding cron jobs..."
cronjobs="crontab"  # cron jobs file
crontab -l > cron

while read line; do
    echo "$line" >> cron 
done < $cronjobs

crontab cron
rm cron

# add user to docker group to run without sudo
sudo gpasswd -a $USER docker
newgrp docker << EONG

# compose and run app
echo "Composing..."
docker-compose -p smarthome up
