This repo will host all my setup files

Supported linux flavors: Debian-based  

Requirements:
- ANSIBLE > 2.6 
- DOCKER

Installing zfs:
```bash
sudo apt install zfsutils-linux
zpool import storage
```

Install docker:
```bash
sudo apt install curl
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io
```

Installing latest version of ansible:
```bash
sudo apt-add-repository ppa:ansible/ansible
sudo apt update
sudo apt install -y ansible
```

Run playbook:
```bash
sudo ansible-playbook -i inventory clientplaybook.yml
```

