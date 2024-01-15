# Ensure USER variabe is set
[ -z "${USER}" ] && export USER=$(whoami)

# Stop Docker
echo "Stopping Docker"
pkill Docker

# Uninstall docker, docker-compose and docker-machine if they are installed with brew
brew uninstall -f docker docker-compose docker-machine &>/dev/null ;:

echo -n "Deleting all docker files from the home and goinfree directory"
rm -rf /goinfre/$USER/docker
echo -n "."
rm -rf ~/.docker
echo -n "."
rm -rf ~/Library/Containers/com.docker.docker
echo -n "."
rm -rf ~/Library/Containers/com.docker.helper
echo -n "."
rm -rf ~/Library/Group\ Containers/group.com.docker
echo -n "."
rm -rf ~/Library/Caches/com.docker.docker
echo -n "."
rm -rf ~/Library/PrivilegedHelperTools/com.docker.vmnetd
echo -n "."
rm -rf ~/Library/Preferences/com.docker.docker.plist
echo "."

echo "Docker is starting again"
# Start Docker again
open -g -a Docker
