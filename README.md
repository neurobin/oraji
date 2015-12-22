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

1. The version number points to the jdk install directory: `/usr/lib/jvm/jdk<version_number>`
2. After uninstalling with this script, if Java falls back to another Java version then JAVA_HOME and other environment variables **will** be updated accordingly (you will need to run `source /etc/profile` manually to populate them immediately), but mozilla plugin will **not**. Run `ln -sf /usr/lib/jvm/jdk<version_number>/jre/lib/your-system-architecture-here/libnpjp2.so ~/.mozilla/plugins/` in a terminal to get it back (If you really need it). `jdk<version_number>` and `your-system-architecture-here` in the above code needs to be changed to actual value

####N.B: The uninstaller is only for the oracle java installed with the `oraji` script.

#ChangeLog:

###`3.0`: <span class="light-quote">Tue Dec 22 19:32:07 UTC 2015</span>

1. Improved portability.
2. Lot's of bug fixed.
3. Comprehensive install of java which makes it usable for java developers.

###`3.1`: <span class="light-quote">Tue Dec 22 20:58:42 UTC 2015</span>

1. Added some extra environment variables besides JAVA_HOME.
2. Updated PATH environment variables with some new paths.
3. JAVA_HOME is no longer deleted by uninstall script.
4. Multiple java version management.


Tested OS:
=============

1. Xubuntu 14.04.1 LTS

