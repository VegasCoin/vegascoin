===========

VegasCoin wallet source code

Compile Instructions:

Ubuntu: sudo apt-get install libsqlite3-dev sqlite3 build-essential libevent-dev libmemcached-dev libcurl4-openssl-dev zlib1g-dev libjansson-dev curl memcached automake gcc libevent-1.4-2 libevent-extra-1.4-2 libevent1-dev libjansson-dev libjansson4 libmemcached10 libmemcached-dev
Centos: yum install libevent libevent-devel jansson-devel jansson libmemcached libmemcached-devel

There is still a problem with compiling this wallet on RedHat / Fedora / CentOS due to ECC not being supported in the openssl packages of those distros. Open SSL must be compiled manually so that ECC support will be available

Go to projectroot/src; make -f makefile.unix USE_UPNP=-


Qt wallet:
in root of project; qmake USE_UPNP=-; make
