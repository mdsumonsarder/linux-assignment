if id "developer" &>/dev/null; then
 echo "User 'developer' already exists."
else
 sudo useradd -m -d /home/developer_home -s /bin/sh developer
 echo "User 'developer' created with home /home/developer_home and shell /bin/sh"
fi

echo "Developer user info:"
id developer

sudo usermod -l devuser developer
echo "Username changed from 'developer' to 'devuser'"

if ! getent group devgroup >/dev/null; then
    sudo groupadd devgroup
    echo "Group 'devgroup' created"
fi

sudo usermod -aG devgroup devuser
echo "devuser added to devgroup"

echo "Set password for devuser:"
sudo passwd devuser

echo "Final info for devuser:"
id devuser

