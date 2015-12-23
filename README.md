OracleJDKInstaller
==================

Oracle java (jdk and/or jre) installler script for linux. It simplifies the installation of Oracle java (jdk and/or jre) from a [download](http://www.oracle.com/technetwork/java/javase/downloads/index.html)ed source (tar.gz). It also maintains consistency among multiple versions of java (jdk and/or jre) installed with this script.

Install oraji:
=====================

Give the <span class="light-quote">install.sh</span> file execution permission and run it in terminal (with root privillege).

```sh
sudo ./install.sh
```

Java Installation Instruction:
=============================

Run in terminal:

```sh
sudo oraji /path/to/the/java/archive
```
(or run `sudo /path/to/oraji /path/to/the/java/archive` after giving the *oraji* script execution permission if you didn't install the script).

That's it. Now if you want to populate JAVA_HOME and other environment variables run `source /etc/profile` or logout and login.


Java Uininstallation Instruction:
============================

1. Run `oraji -u` (or `path/to/oraji -u` if you didn't install the *oraji* script).
2. It will ask for java version. An auto detected version is provided as suggestion. If that is correct, just hit <kbd>Enter</kbd> without making any changes.
3. Otherwise if the java version provided by default isn't correct (this shouldn't happen), provide manually and then hit <kbd>Enter</kbd>.
4. The version can be provided as command line argument too i.e `oraji -u version` (or `/path/to/oraji -u version` if you didn't install the script).

**Note:**

1. The java version points to the jdk/jre install directory: `/usr/lib/jvm/jdk|jre<version_number>`
2. After uninstalling with this script, if Java falls back to another Java version then JAVA_HOME and other environment variables **will** be updated accordingly (you will need to run `source /etc/profile` manually to populate them immediately),  mozilla plugin will be restored to the fallback java. If mozilla plugin fails to restore (this shouldn't happen) then run <pre><code>ln -sf /usr/lib/jvm/jdk<version_number>/jre/lib/your-system-architecture-here/libnpjp2.so ~/.mozilla/plugins/</code></pre> in a terminal to get it back (If you really need it). `jdk<version_number>` and `your-system-architecture-here` in the above code needs to be changed to actual value.

####N.B: The uninstallation method is only for the oracle java installed with the `oraji` script.

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

###`4.0.0`: <span class="light-quote">Tue Dec 22 23:37:16 UTC 2015</span>

0. an install.sh script to install *oraji*.
1. Takes the path of the archive instead of version name.
2. Can be run from any directory.
3. Both jdk and jre can be installed/uinstalled.
4. If multiple version of jdk/jre is installed, then upon uninstallation of a version, java automatically falls back to a previously (most recent) installed version.
5. `oraji -v` provides version info of `oraji` itself.
6. `oraji -u` to uninstall java.
7. Internal multiple java version management.


Tested OS:
=============

1. Xubuntu 14.04.1 LTS

