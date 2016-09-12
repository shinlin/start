# script before cloning or templating

sh ./set-environment-variables.sh
sh ./install-yum-prereqs.sh
sh ./stop-logging.sh
sh ./remove-old-kernels.sh
sh ./yum-clean.sh
sh ./rotate-clean-logs.sh
sh ./deal-with-nics.sh
sh ./clean-tmp.sh
sh ./setup-sshd.sh
sh ./add-user.sh