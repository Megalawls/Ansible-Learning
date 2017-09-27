sudo apt-get update

#Installs pip and ensures it is at its latest version
sudo apt-get install -y python-pip
sudo pip install --upgrade pip
pip -V

#Installs a bunch of shit like Pip, python, perl etc. in case the above fails
sudo apt-get install -y software-properties-common

#Installs ansible
sudo pip install ansible
ansible --version

#Configures SSH key with no password
#This works headlessly, outputting to the file at the end
sudo ssh-keygen -t rsa -N '' -f /home/vagrant/.ssh/id_rsa
# The above doesnt work as of yet - ssh-keygen -t rsa does
sudo ssh-agent bash
sudo ssh-add ~/.ssh/id_rsa

#ssh-copy-id vagrant@SLAVE IP ADDRESS HERE can then be used to allow ssh
