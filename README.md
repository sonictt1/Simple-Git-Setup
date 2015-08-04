# simple_git_setup
A quick-and-dirty git bash setup.
Designed specifically for:
- Git Bash on Windows (tested)
- Cygwin on Windows (untested)
- OS X (untested)
- Linux (tested)

In Git Bash, Cygwin, and OS X the program should generate an ssh key and copy it to your clipboard. Linux and miscellaneous OSes will print the key to the terminal so the user may mark and copy it manually.

Feel free to modify the script to copy the .ssh key for your specific OS and submit a pull request.

The program will set your user.name and user.email fields, default your push and pull methods to "matching", set some useful shortcuts (those shortcuts will print on screen), and it will generate an ssh key and copy it to your clipboard for you.
