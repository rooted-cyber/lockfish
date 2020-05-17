g() {
	printf "\033[1;92m Installing Requirement..\n"
	apt update
	apt upgrade
	apt install curl
	apt install openssh
	apt install figlet
	apt install python
	apt install php
	cd ~/lockfish
	unzip .lock.zip
	ch
	clear
	cd $PREFIX/bin
	echo "#!/data/data/com.termux/files/usr/bin/sh" >> lock
	echo "bash ~/lockfish/lockfish.sh" >> lock
	chmod 777 lock
	printf "\n\033[1;93m Now you can use this command :- lock\n"
	read
	}
	un() {
		cd ~/lockfish
		unzip .lock.zip
		ch
		}
	ch () {
		cd ~/lockfish
		if [ -e .random.py ];then
		echo
		else
		un
		fi
		}
		g