OracleJDKInstaller
==================

Oracle JDK installler script for linux

Installation Instruction:
=========================

1. Put the `oraji` file inside the folder where you have downloaded the archive of oracle jdk (tar.gz)

2. Give the install script execution permission (`sudo chmod +x path_to_the_folder/oraji`)

3. Now run the script `oraji` in terminal, or just drag and drop it in terminal and hit <kbd>Enter</kbd>.

4. It will ask for version number. Give the version number. (Example: `8` or `8u25`, must match with the archive)

5. You can provide the version number as command line argument too, i.e `/path/to/the/oraji version_number`. For example: `./oraji 8u25`

Uininstallation Instruction:
============================

1. Give the `uninstall` file execution permission and run it.

2. It will ask for version number. A suggestive default version number is provided automatically. If that is correct, just hit <kbd>Enter</kbd> without making any changes.

3. Otherwise if the  version number provided by default isn't correct, provide manually and then hit <kbd>Enter</kbd>.

Note that the version number points to the jdk install directory: `/usr/lib/jvm/jdk<version_number>`
