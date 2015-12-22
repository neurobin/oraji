OracleJDKInstaller
==================

Oracle JDK installler script for linux

Installation Instruction:
=========================

1. Put the `oraji` file inside the folder where you have downloaded the archive of oracle jdk (tar.gz)

2. Give the install script execution permission (`sudo chmod +x path_to_the_folder/oraji`)

3. Now run the script `oraji` in terminal (with root permission), or just drag and drop it in terminal (add `sudo` if you are not root) and hit <kbd>Enter</kbd>.

4. It will ask for version number. Give the version number. (Example: `8` or `8u25`, must match with the archive)

5. You can provide the version number as command line argument too, i.e `sudo /path/to/the/oraji version_number`. For example: `sudo ./oraji 8u25`

**Notice:**  `oriji (<3.0)` is buggy and not usable for development purposes. Please update to `oraji >=3.0`.


Uininstallation Instruction:
============================

1. Give the `uninstall` file execution permission and run it (use `sudo` if you are not root).

2. It will ask for version number. A suggestive default version number is provided automatically. If that is correct, just hit <kbd>Enter</kbd> without making any changes.

3. Otherwise if the  version number provided by default isn't correct, provide manually and then hit <kbd>Enter</kbd>.

**Note:**

1. that the version number points to the jdk install directory: `/usr/lib/jvm/jdk<version_number>`
2. After uninstalling with this script, if Java falls back to another Java version then JAVA_HOME will **not** be updated accordingly. You will need to reinstall that version (fall back version) again with the `oraji` script to get JAVA_HOME updated. The same goes for the mozilla plugin.

####N.B: The uninstaller is only for the oracle java installed with the `oraji` script.


Tested OS:
=============

1. Xubuntu 14.04.1 LTS

