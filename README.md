VegasCoin integration/staging tree
================================

http://www.vegascoin.co

Copyright (c) 2009-2013 Bitcoin Developers
Copyright (c) 2011-2013 Litecoin Developers
Copyright (c) 2012-2013 VegasCoin Developers

What is VegasCoin?
------------------

VegasCoin is anonymous internet money that can be instantly transferred to anyone in the world over a public peer-to-peer network ran by volunteers .

 - 120 second transaction times
 - Scrypt algorithm
 - 100000000 total coins
 - 30 coins created per block discovered
 - 30 blocks to retarget difficulty, with Kimoto Gravity Well

For more information, as well as an immediately useable, binary version of
the VegasCoin client sofware, see http://www.vegascoin.co.

How to compile Vegas Coin?
--------------------------

See the bottom of this document for build and compiling instructions


License
-------

VegasCoin is released under the terms of the MIT license. See `COPYING` for more
information or see http://opensource.org/licenses/MIT.

Development process
-------------------

Developers work in their own trees, then submit pull requests when they think
their feature or bug fix is ready.

If it is a simple/trivial/non-controversial change, then one of the VegasCoin
development team members simply pulls it.

If it is a *more complicated or potentially controversial* change, then the patch
submitter will be asked to start a discussion (if they haven't already) on github
[https://github.com/VegasCoin/vegascoin]().

The patch will be accepted if there is broad consensus that it is a good thing.
Developers should expect to rework and resubmit patches if the code doesn't
match the project's coding conventions (see `doc/coding.txt`) or are
controversial.

The `master` branch is regularly built and tested, but is not guaranteed to be
completely stable. [Tags](https://github.com/VegasCoin/vegascoin/tags) are created
regularly to indicate new official, stable release versions of VegasCoin.

Testing
-------

Testing and code review is the bottleneck for development; we get more pull
requests than we can review and test. Please be patient and help out, and
remember this is a security-critical project where any mistake might cost people
lots of money.

### Automated Testing

Developers are strongly encouraged to write unit tests for new code, and to
submit new unit tests for old code.

Unit tests for the core code are in `src/test/`. To compile and run them:

    cd src; make -f makefile.unix test

Unit tests for the GUI code are in `src/qt/test/`. To compile and run them:

    qmake VEGASCOIN_QT_TEST=1 -o Makefile.test vegascoin-qt.pro
    make -f Makefile.test
    ./vegascoin-qt_test


Compiling Vegas Coin
--------------------

Ubuntu / Kubuntu / Debian:
--------------------------

First install these packages
sudo apt-get install libsqlite3-dev sqlite3 build-essential libmemcached-dev libcurl4-openssl-dev zlib1g-dev libjansson-dev curl memcached automake gcc libevent-1.4-2 libevent-extra-1.4-2 libevent1-dev libjansson-dev libjansson4 libmemcached10 libmemcached-dev libminiupnpc8 libminiupnpc-dev libboost-thread1.53.0 libboost-thread1.53-dev libdb5.3++ libdb5.3++-dev libboost-system1.53.0 libboost-system1.53-dev libboost-filesystem1.53.0  libboost-filesystem1.53-dev libboost-program-options1.53.0 libboost-program-options1.53-dev libboost-iostreams1.53.0 libboost-iostreams1.53-dev libboost-iostreams1.53.0 libboost-iostreams1.53-dev libboost-date-time1.53.0 libboost-date-time1.53-dev  libboost-signals1.53.0  libboost-signals1.53-dev libboost-regex1.53.0 libboost-regex1.53-dev libboost1.53-dev libboost-system1.53-dev libboost-system1.53.0 libboost-chrono1.53-dev libboost-chrono1.53.0 build-essential libboost-all-dev libcurl4-openssl-dev libdb5.3-dev libdb5.3++-dev qt5-default

Go to project_root/src

make -f makefile.unix USE_UPNP=-

If you have a multi core CPU you can add -jCPUCOUNT to increase compiling speed like this:

make -j4 -f makefile.unix USE_UPNP=- (this is if you want to use 4 CPU cores)

You should now have project_root/src/vegascoind which is your command line wallet. You can move this wallet to /usr/bin/vegascoind for ease of use.

Then go to project_root

qmake "USE_UPNP=-" vegascoin-qt.pro


Fedora / Redhat / CentOS:
-------------------------

The steps for these OS'es should be the same as for Ubuntu, with the difference of the packages that need to be installed.

Please install the following packages and then continue with the build steps as explained in the Ubuntu section.

NOTE: There is still a problem with compiling this wallet on RedHat / Fedora / CentOS due to ECC not being supported in the openssl packages of those distros. Open SSL must be compiled manually so that ECC support will be available!

yum install libevent libevent-devel jansson-devel jansson libmemcached libmemcached-devel gcc-c++ m4 openssl-devel db4-devel boost-devel boost


Windows:
--------

There is a default executable for windows already, which you can use. If you still prefer to build your own windows version, please refer to http://andarazoroflove.org/how-to-create-alt-coin-scrypt-clones-for-fun-and-profit-bitcoin-litecoin-secrets-exposed/ as we currently do not have clear windows build instructions available. If you have a list of steps, please send them to us and we'll gladly add them here.


Mac:
----

We do not have a Mac version of a wallet available at this moment, and have a bounty for whoever can help us with that. If you want to build a Mac wallet yourself, please refer to http://andarazoroflove.org/how-to-create-alt-coin-scrypt-clones-for-fun-and-profit-bitcoin-litecoin-secrets-exposed/ as we currently do not have clear windows build instructions available. If you have a list of steps, please send them to us and we'll gladly add them here.
