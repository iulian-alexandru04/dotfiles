this repo will host all my setup files

supported distros: ubuntu
ANSIBLE > 2.6

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

Backing up deluge metadata:
```bash
tar -cf deluge_meta.tar /var/lib/deluge/.config/deluge
```

Restoring deluge metadata:
```bash
sudo tar -xf deluge_meta.tar -C /var/lib/deluge/.config/deluge
```

