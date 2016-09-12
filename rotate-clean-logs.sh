 # Force the logs to rotate & remove old logs we don’t need
/usr/sbin/logrotate /etc/logrotate.conf --force
rm -f /var/log/*-???????? /var/log/*.gz
rm -f /var/log/dmesg.old
rm -rf /var/log/anaconda

# Truncate the audit logs (and other logs we want to keep placeholders for)
cat /dev/null > /var/log/audit/audit.log
cat /dev/null > /var/log/wtmp
cat /dev/null > /var/log/lastlog
cat /dev/null > /var/log/grubby