# Linux Tips and Tricks

***

## Linux Tips and Tricks Table of Contents

[TOC]

***

## How To Install Java on the Steam Deck
[Back to the Top](#linux-tips-and-tricks-table-of-contents)

1. In the `/home/deck/Applications` folder, create a `jdk` folder
2. In Desktop Mode, open the [https://jdk.java.net/](https://jdk.java.net/) website
3. Click `JDK ##` to the right of `Ready for Use`
    * The version number may vary depending on when you are downloading Java
4. Download the `tar.gz` file to the right of `Linux / x64` to the newly created `/home/deck/Applications/jdk` folder
5. Right click `openjdk-##.#.#_linux-x64_bin.tar.gz`, click `Extract > Extract Archive here`
    * If it creates a subfolder, move the contents directly to `/home/deck/Applications/jdk`
6. In the `/home/deck` folder, right click the `.bashrc` file, click `Open with Kate` or a text editor of your choice
    * `~/.bashrc` is a hidden file by default. In Dolphin (file manager), click the hamburger menu in the top right, click `Show Hidden Files` to see these files
7. At the bottom of the `.bashrc` file, paste the following two lines:

        export JAVA_HOME=$HOME/Applications/jdk
        export PATH=$JAVA_HOME/bin:$PATH

8. Java will now be installed on your Steam Deck

To update JDK, replace the files in `/home/deck/Applications/jdk` with the latest files from [https://jdk.java.net/](https://jdk.java.net/).

***