dpkg -s git &> /dev/null
GIT_IS_AVAILABLE=$?

if [ $GIT_IS_AVAILABLE -eq 0 ]; then
    apt update
    apt -y install git
else
	echo "Git installed"
fi