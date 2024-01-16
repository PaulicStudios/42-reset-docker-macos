# Stop Docker
echo "Stopping Docker"
pkill Docker

echo -n "Deleting all docker files from the home and goinfree directory"
rm -rf ~/goinfre/docker
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

echo "Finished. You can start docker again"
