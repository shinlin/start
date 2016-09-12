adduser $ADMIN_USER

# add public SSH key
mkdir -m 700 /home/$ADMIN_USER/.ssh
chown $ADMIN_USER:$ADMIN_USER /home/$ADMIN_USER/.ssh
echo $ADMIN_PUBLIC_KEY > /home/$ADMIN_USER/.ssh/authorized_keys
chmod 600 /home/$ADMIN_USER/.ssh/authorized_keys
chown $ADMIN_USER:$ADMIN_USER /home/$ADMIN_USER/.ssh/authorized_keys

# add support for ssh-add
echo 'eval $(ssh-agent) > /dev/null' >> /home/$ADMIN_USER/.bashrc

# add user 'ADMIN_USER' to sudoers
echo "$ADMIN_USER    ALL = NOPASSWD: ALL" > /etc/sudoers.d/$ADMIN_USER
chmod 0440 /etc/sudoers.d/$ADMIN_USER