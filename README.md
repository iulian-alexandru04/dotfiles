this repo will host all my setup files

supported distros: ubuntu
ANSIBLE > 2.6

Installing latest version of ansible:
```bash
sudo apt-add-repository ppa:ansible/ansible
sudo apt update
sudo apt install ansible
```

Backing up deluge metadata:
```bash
tar -cf deluge_meta.tar /var/lib/deluge/.config/deluge
```

Restoring deluge metadata:
```bash
sudo tar -xf deluge_meta.tar -C /var/lib/deluge/.config/deluge
```

