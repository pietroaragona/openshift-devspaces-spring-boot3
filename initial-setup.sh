#!/usr/bin/env bash

# step necessario in quanto ci serve installare una versione preview di un plugin

TEMP_DIR=$(mktemp -d)
#echo $TEMP_DIR

echo -e "\nInstalling vscode plugins...\n"

TEMP_FILE=$TEMP_DIR/redhat.java.vsix
curl -s https://openvsxorg.blob.core.windows.net/resources/redhat/java/linux-x64/1.16.2023030303/redhat.java-1.16.2023030303@linux-x64.vsix -o $TEMP_FILE
code-oss --install-extension $TEMP_FILE
rm -f $TEMP_FILE

echo -e "\nDone!"