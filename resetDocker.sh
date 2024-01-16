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
rm -rf ~/Library/Application\ Support/Docker\ Desktop
echo -n "."
rm -f ~/Library/HTTPStorages/com.docker.docker.binarycookies
echo -n "."
rm -rf ~/Library/Saved\ Application\ State/com.electron.docker-frontend.savedState
echo -n "."
rm -rf ~/Library/Logs/Docker\ Desktop
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
echo -n "."
rm -f ~/Library/Preferences/com.electron.docker-frontend.plist
echo "."

echo "Finished. You can start docker again"
