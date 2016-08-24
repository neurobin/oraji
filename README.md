Oracle Java Installer
====================

Oracle java (jdk/jre) installler script for linux. It simplifies the installation of Oracle java from a [download](http://www.oracle.com/technetwork/java/javase/downloads/index.html)ed source (tar.gz). It also maintains consistency among multiple versions of java (jdk/jre). Uninstalling any java version installed with this script will fall back to the next most recently installed version of java.

Install oraji:
=====================

Give the <span class="light-quote">install.sh</span> file execution permission and run it in terminal (with root privilege).

```sh
sudo ./install.sh
```
**On Ubuntu:**

```sh
sudo add-apt-repository -y ppa:neurobin/ppa
sudo apt-get update
sudo apt-get install oraji
```

Java Installation Instruction:
=============================

Run in terminal:

```sh
sudo oraji '/path/to/the/jdk_or_jre_archive'
```
(or run `sudo /path/to/oraji /path/to/the/jdk_or_jre_archive` after giving the *oraji* script execution permission if you didn't install the script).

That's it. Now if you want to populate JAVA_HOME and other environment variables run `source /etc/profile` or logout and login.


Java Uninstallation Instruction:
============================

1. Run `oraji -u` (or `path/to/oraji -u` if you didn't install the *oraji* script).
2. Choose the version to be uninstalled from the list.
3. The version can be provided as command line argument too i.e `oraji -u version` (or `/path/to/oraji -u version` if you didn't install the script).

**Note:**

1. The java version points to the jdk/jre install directory: `/usr/lib/jvm/jdk|jre<version_number>` and comprises with both the *jdk/jre* part and the *version_number* part.
2. You shouldn't run `oraji -u version` (with a version argument) unless you are sure of it. Simply run `oraji -u` and let oraji detect the version for you.
3. After uninstalling with this script, if Java falls back to another Java version then JAVA_HOME and other environment variables **will** be updated accordingly (you will need to run `source /etc/profile` manually to populate them immediately),  mozilla plugin will be restored to the fallback java.

**N.B:** The uninstallation method is only for the oracle java installed with the `oraji` script. It deletes the `/usr/lib/jvm/jdk|jre<version_number>` directory and all exports and environment variables that was included in */etc/profile* by oraji and the mozilla plugin. If a fall back java is available, exports and environment variables will be available for this java version and mozilla plugin will be restored.


Manage multiple Java versions:
===========================

**Switching between Java versions was never easier**

You can install multiple Java versions and set whichever version you want as your current Java.

1. To check which version of Java is currently active (with all other available Java versions) run `oraji -c`
2. To activate a Java version, run `sudo oraji -s` and select the version from the list.


Options:
=======

Option | Alt. Option | Details
---- | ------ | -----
`-v` | `--version`    | Show version
`-h` | `--help`       | Show help
`-i` | `--install`    | Install from a archive path
`-u` | `--uninstall`  | Uninstall java
`-s` | `--set`        | Set a java version
`-c` | `--check`      | Show the installed java versions


#ChangeLog:

###`4.1.0`: <span class="light-quote">Tue Aug 23 23:38:01 UTC 2016</span>

1. `-s` option to activate an installed Java version
2. `-c` option to check installed Java version
3. `-h` option for help
4. `-i` option for an alternative to provide archive path

###`4.0.2`: <span class="light-quote">Sat Jan  9 16:16:23 UTC 2016</span>

1. Improved environment variable management for multiple java version.
2. Minor bug fix.
3. Manual added. Can be accessed with `man oraji`.

###`4.0.1`: <span class="light-quote">Wed Dec 23 04:34:25 UTC 2015</span>

1. Input prompt improved.
2. tilde (~) expansion supported in input prompt.
3. Minor bug fix

###`4.0.0`: <span class="light-quote">Tue Dec 22 23:37:16 UTC 2015</span>

0. an install.sh script to install *oraji*.
1. Takes the path of the archive instead of version name.
2. Can be run from any directory.
3. Both jdk and jre can be installed/uinstalled.
4. If multiple version of jdk/jre is installed, then upon uninstallation of a version, java automatically falls back to a previously (most recent) installed version.
5. `oraji -v` provides version info of `oraji` itself.
6. `oraji -u` to uninstall java.
7. Internal multiple java version management.

###`3.0.1`: <span class="light-quote">Tue Dec 22 20:58:42 UTC 2015</span>

1. Added some extra environment variables besides JAVA_HOME.
2. Updated PATH environment variables with some new paths.
3. JAVA_HOME is no longer deleted by uninstall script.
4. Multiple java version management.

###`3.0.0`: <span class="light-quote">Tue Dec 22 19:32:07 UTC 2015</span>

1. Improved portability.
2. Lot's of bug fixed.
3. Comprehensive install of java which makes it usable for java developers.

Tested OS:
=============

1. Xubuntu 14.04.1 LTS

