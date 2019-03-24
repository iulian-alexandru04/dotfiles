this repo will host all my setup files

supported distros: ubuntu  
ANSIBLE > 2.6

Installing zfs:
```bash
sudo apt install zfsutils-linux
zpool import storage
```

Installing latest version of ansible:
```bash
sudo apt-add-repository ppa:ansible/ansible
sudo apt update
sudo apt install ansible
```

Run playbook:
```bash
sudo ansible-playbook -i inventory delugeplaybook.yml
```

Install docker:
```bash
sudo apt install curl
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io
```

