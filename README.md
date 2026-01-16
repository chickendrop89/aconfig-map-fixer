# AConfig map fixer
Simple flashable script to fix AConfig maps after testing DSUs.

In my case, testing an Android 16 DSU on Android 15 ROM caused the permission
controller to crash every time.
```
java.lang.IllegalStateException: android.permission.RANGING not defined by platform 
```

This should fix the issue, and should also work for future Android versions,
where similar phenomenon happens.

## Installation
- Download module archive from releases
- Flash it in any superuser manager
