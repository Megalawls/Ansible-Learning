sudo apt-get update

#Installs pip and ensures it is at its latest version
sudo apt-get install -y python-pip
sudo pip install --upgrade pip
pip -V

#Installs a bunch of stuff like Pip, python, perl etc. in case the above fails
sudo apt-get install -y software-properties-common

#Installs ansible
sudo pip install ansible
ansible --version
