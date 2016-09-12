# Remove the SSH host keys
rm -f /etc/ssh/*key*

# configure sshd_config to only allow Pubkey Authentication
sed -i -r 's/^#?(PermitRootLogin|PasswordAuthentication|PermitEmptyPasswords) (yes|no)/\1 no/' /etc/ssh/sshd_config
sed -i -r 's/^#?(PubkeyAuthentication) (yes|no)/\1 yes/' /etc/ssh/sshd_config