# Make Opensips-3.0 using GNU Make


If the dependencies are not properly installed and the commands;
    sudo make all
    sudo make install
have been executed, this results in error. If the missing dependencies are reinstalled
these command might not work properly. For this purpose we use the make clean commands.

Make targets:
  
Clean:
 make clean   (clean the modules too)
 make proper  (clean also the dependencies)
 make distclean (the same as proper)
 make maintainer-clean (clean everything, including auto generated files, tags, *.dbg a.s.o)

sudo make modules

modules can be excluded using exclude_modules="exec"

sudo make menuconfig, select modules compile and install,
Install:

make prefix=/usr/local  install

Note: If you use prefix parameter in make install then you also need
to use this parameter in previous make commands, i.e. make, make modules,or make all. If you fail to do this then OpenSIPS will look for the default configuration file in a wrong directory, because the directory of the default configuration file is hard coded into opensips during compile time. When you use a different prefix parameter when installing then the  directory hard coded in opensips and the directory in which the file will be 
installed by make install will not match. (You can specify exact location of the configuration file using -f parameter of opensips).

For example, if you do the following:
make all
make prefix=/ install

Then the installation will put the default configuration file into
/etc/opensips/opensips.cfg (because prefix is /), but opensips will look for the file in /usr/local/etc/opensips/opensips.cfg (because there was no prefix parameter in make all and /usr/local is the default value of prefix.
 

default path for configuration file is 
/usr/local/


# Containerize Opensips-3.0 using Docker