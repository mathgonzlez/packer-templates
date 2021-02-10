#!/bin/sh

set -ex

#Configure Repos
sed -i -e 's/#//g' /etc/apk/repositories
sed -i -e '1d' /etc/apk/repositories

cat >/usr/local/bin/shutdown <<EOF
#!/bin/sh
poweroff
EOF
chmod +x /usr/local/bin/shutdown


echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config
echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config
#sed -i "/#PermitRootLogin prohibit-password/c\PermitRootLogin yes" /etc/ssh/sshd_config
#sed -i "/#PermitRootLogin prohibit-password/c\PermitRootLogin yes" /etc/ssh/sshd_config
mkdir ~/.ssh
/etc/init.d/sshd restart
