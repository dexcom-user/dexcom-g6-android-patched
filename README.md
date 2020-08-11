# Patched Dexcom G6 for Android 1.7.0.3 (mg/dl - international)

This repository provides a patch to remove the application compatibility check of the Dexcom G6 Android application. It also contains a set of scripts to build a patched application for yourself. 

Unfortunately this application is only available for a [limited amount of devices](https://www.dexcom.com/compatibility) - even if it **should** run on most phones with Android 6.0+.


## Applied patches

The released APK packages contain the following patches:

-   [Remove compatibility check](doc/remove-compatibility.md)

Nothing else is changed compared to the original Dexcom application.


## Bundled tools

Run `init.sh` after cloning the repository. This script downloads the following 3rd party applications into the `utils` folder:

-   [Apktool](https://ibotpeaches.github.io/Apktool/) is used for (de)compilation of APK packages.
    -   Run via: `./utils/apktool.sh`

-   [Bytecode Viewer](https://bytecodeviewer.com/) can be used for investigation of APK packages and creation of smali files ([Dalvik Bytecode](https://source.android.com/devices/tech/dalvik/dalvik-bytecode)).
    -   Run via: `./utils/bcv.sh`
 
-   [JADX](https://github.com/skylot/jadx) can be used for a more comfortable investigation of APK packages.
    -   Run command line tool via: `./utils/jadx.sh`
    -   Run GUI tool via: `./utils/jadx-gui.sh`

-   [Raccoon](http://java-decompiler.github.io/) can be used for downloading APK packages from Google Playstore.
    -   Run via: `./utils/raccoon.sh`

-   [Uber Apk Signer](https://github.com/patrickfav/uber-apk-signer) is used for signing compiled / patched APK packages.
    -   Run via: `./utils/uber-apk-signer.sh` 


## Workflow

-   Run `./ìnit.sh` once in order to download the required applications and to create a keystore for signing the patched application.

-   Open [Raccoon](http://java-decompiler.github.io/) (via `./utils/raccoon.sh`) and download the official Dexcom G6 APK package from Google Playstore.

-   Run `./decompile.sh $APK` (replace `$APK` with the path to your downloaded APK package). The APK package is decompiled and extracted into the local `src` folder.

-   Make your modifications within the `src` folder (e.g. [Remove compatibility check](doc/remove-compatibility.md)).

-   Run `./compile.sh` to rebuild & sign the patched APK file. The script copies the newly created APK file into the local `patched` folder.

-   Copy the newly created APK file from the `patched` folder to your smartphone and install the application.


## Warning

The provided application is unofficial. Don't expect any support by Dexcom in case of problems.


## Other solutions


### Other patches to Dexcom G6 for Android 

-   [Build Your Own Dexcom App](https://docs.google.com/forms/d/e/1FAIpQLScD76G0Y-BlL4tZljaFkjlwuqhT83QlFM5v6ZEfO7gCU98iJQ/viewform) by [shabado8](https://www.reddit.com/user/shabado8)
-   [dexcomapp](https://github.com/dexcomapp/dexcomapp)


### Alternatives to Dexcom G6 for Android

-   [Nightscout xDrip+](https://jamorham.github.io/#xdrip-plus)
