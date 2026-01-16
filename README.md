# AConfig map fixer
Simple flashable script to fix AConfig maps after testing DSUs.

In my case, testing an Android 16 DSU on Android 15 ROM caused the permission
controller to crash every time.
```
java.lang.IllegalStateException: android.permission.RANGING not defined by platform 
```

This should fix the issue, and should also work for future Android versions,
where similar phenomenon happens.

## How it works
The `/metadata/aconfig/maps` directory is renamed to `/metadata/aconfig/maps.bak`,
and system recreates the main `maps` diectory on next boot.

This can be done even without this flashable script, but i made it for convenience

## Installation
- Download module archive from releases
- Flash it in any superuser manager

## But what do i do with locked bootloader?
There's probably nothing that can be done that i can think of. 

The metadata partition is not accessible from android even with `adb` permissions,
you should probably backup all of your data, and factory reset the device.
