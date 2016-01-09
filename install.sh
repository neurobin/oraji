#!/bin/bash
BASEDIR="$(dirname "$BASH_SOURCE")"
cd "$BASEDIR"
if [ $EUID -ne 0 ]; then
    echo -e "\n*********This script must be run with root priviledge*********"
    echo -e "*******************Sorry! Exiting*************************\n"
    exit 1
fi
mkdir -p /usr/local/oraji &&
cp -fr ./* /usr/local/oraji &&
chmod -R 755 /usr/local/oraji &&
ln -sf /usr/local/oraji/oraji /usr/bin/oraji &&
ln -sf /usr/local/oraji/oraji.1 /usr/share/man/man1/oraji.1 &&
echo "***success***" || echo "---Failed!!!---"
