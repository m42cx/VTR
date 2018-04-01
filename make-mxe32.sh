
#!/bin/bash
export PATH=/mnt/mxe/usr/bin:$PATH
MXE_PATH=/mnt/mxe
MXE_INCLUDE_PATH=/mnt/mxe/usr/i686-w64-mingw32.static/include
MXE_LIB_PATH=/mnt/mxe/usr/i686-w64-mingw32.static/lib

#chmod 755 src/leveldb/build_detect_platform
#chmod 755 src/secp256k1/autogen.sh
#cd src/leveldb
#make clean
#make libleveldb.a libmemenv.a
#cd ../..

i686-w64-mingw32.static-qmake-qt5 \
	BOOST_LIB_SUFFIX=-mt \
	BOOST_THREAD_LIB_SUFFIX=_win32-mt \
	BOOST_INCLUDE_PATH=$MXE_INCLUDE_PATH/boost \
	BOOST_LIB_PATH=$MXE_LIB_PATH \
	OPENSSL_INCLUDE_PATH=$MXE_INCLUDE_PATH/openssl \
	OPENSSL_LIB_PATH=$MXE_LIB_PATH \
	BDB_INCLUDE_PATH=$MXE_INCLUDE_PATH \
	BDB_LIB_PATH=$MXE_LIB_PATH \
	MINIUPNPC_INCLUDE_PATH=$MXE_INCLUDE_PATH \
	MINIUPNPC_LIB_PATH=$MXE_LIB_PATH \
        SECP256K1_LIB_PATH=/mnt/secp256k1_win/lib32 \
        SECP256K1_INCLUDE_PATH=/mnt/secp256k1_win/include \
	QMAKE_LRELEASE=/mnt/mxe/usr/i686-w64-mingw32.static/qt/bin/lrelease  ./qt.pro

#make clean
make -f Makefile.Release -j3
