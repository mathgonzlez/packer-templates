# packer-templates

# 🎈Packer templates🎈

Coleccion de scripts con el fin de automatizar tanto la creacion de imagenes privadas
como asi tambien la automatizacion para el mantenimiento de imagenes alojadas en cloud
providers (usando openstack).


## 🖥️ kvm 🖥️:
Scripts relacionados a la creacion de imagenes. Punto de partida para cualquier 
imagen usando el backend libvirt con KVM


## ⭕ Openstack ⭕:
Scripts relacionados con la creacion de imagenes en openstack. Util para customizar imagenes ya creadas
y subidas a la nube. Ej: Crear imagen de alpine con docker automaticamente.

## 📖 Ansible Playbooks 📖:
Playbooks para automatizar tanto la creacion como actualizacion de imagenes. Permite actualizar multiples
imagenes al mismo tiempo, o crear maquinas con imagenes customs dentro de la nube Openstack.



NOTE:
passwd algo for ubuntu 

mkpasswd --methhod=SHA-512 --rounds=4096
