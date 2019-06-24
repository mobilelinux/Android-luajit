Android-luajit
==============

Android-luajit is the [luajit](http://www.luajit.org/) wrapper for the [Android](http://www.android.com/) platform. 

* it includes [LuaJava](http://www.keplerproject.org/luajava/), so you can access (almost) everything the [Android API](http://developer.android.com/reference/classes.html) provides

Requirements
------------

* [Android SDK](http://developer.android.com/sdk/index.html)
* [Android NDK](http://developer.android.com/sdk/ndk/index.html)
* [Android Studio](https://developer.android.com/studio)

Building
--------

Use ndk-build to build native library, Use AS to build demo apk.

    git clone git://github.com/mobilelinux/Android-luajit.git
	cd Android-luajit/jni
	ndk-build
This will build the native library, then import the project into Android Stduio, or use gradle to build it with command line.


