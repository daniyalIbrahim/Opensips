# Opensips-3.0 

### Supported Architecture and OS

        Supported architectures: Linux/i386, Linux/armv4l, FreeBSD/i386, OpenBSD/i386, Solaris/sparc64, NetBSD/sparc64 (for other architectures the Makefiles might need to be edited)

### Dependencies of Opensips

        gcc / suncc / icc : gcc >= 2.9x; 4.[012] 
            recommended (it will work with older version but it might require some options tweaking for best performance)
        bison or yacc (Berkley yacc)
        flex
        GNU make 
            (on Linux this is the standard "make", on FreeBSD and Solaris is called "gmake") version >= 3.79.
        sed and tr 
            (used in the makefiles)
        GNU tar 
            ("gtar" on Solaris) and gzip if you want "make tar" to work
        GNU install 
            or BSD install (on Solaris "ginstall") if you want "make install", "make bin", "make sunpkg" to work
        openssl 
            if you want to compile the TLS support
        libsctp 
            if you want to compile the SCTP support
        libmysqlclient & libz (zlib) 
            libs and devel headers- if you want mysql DB support (the db_mysql module)
        libpq / postgresql 
            -libs and devel headers- if you want postgres DB support (the db_postgres module)
        unixodbc 
            -libs and devel headers- if you want unixodbc DB support (the db_unixodbc module)
        libexpat 
            if you want the jabber gateway support (the jabber module) or the
        XMPP gateway support
        libxml2 
            if you want to use the cpl_c (Call Processing Language) or the presence modules (presence and pua*)
        libradius-ng 
            -libs and devel headers- if you want to use functionalities with radius support - authentication, accounting, group support, etc
        unixodbc 
            libs and devel headers - if you want UNIXODBC support 
            (the db_unixodbc module)
        libxmlrpc-c3 
            - libs and devel headers - if you want to have XML-RPC support for the Management interface (MI)
        libperl 
            - libs and devel headers - if you want PERL connector to support perl scripting from you config file (perl module)
        libsnmp9 
            - libs and devel headers - if you want SNMP client functionality (SNMP AgentX subagent) for opensips
        libldap 
            libs and devel headers v2.1 or greater - if you want LDAP support
        libconfuse and devel headers 
            - if you want to compile the carrierroute module
            
        libncurses5-dev and m4 - 
            if you want to use the menuconfig graphical user interface for 
            configuring OpenSIPS compilation & cfg file options



### Important Directories for Opensips


####    /etc/default/opensips/
            Opensips service configuration file directory

####    /usr/local/etc/opensips/
            Opensips default configuration file directory

####    /etc/init.d/
            Opensips service file directory

####    /usr/local/lib64/opensips/modules
            Opensips modules directory

####    /etc/opensips/
            These are the files copied to this directory. The files include the RADIUS dictionary to be used for OpenSIPS, the main configuration file opensips.cfg, the opensipsctl resource file, opensipsctlrc, and the osipsconsole resource file, osipconsolerc.

