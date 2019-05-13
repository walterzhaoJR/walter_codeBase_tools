SET(PROJECT_NAME "../../bin/oss_server")

SET(CMAKE_CXX_FLAGS "-std=c++0x")
set(VERSION_INFO "'\"--KEEPER-V2.0R440D001MIG8.0\"'")# --KEEPER-V2.0R440D001MIG8.0
set(DATE_INFO "'\"`date +%Y/%m/%d` & `date +%H:%M:%S`\"'")# `date +%Y/%m/%d` `date +%H:%M:%S`
set(TOSF_DATE_INFO "'\"`date +%Y-%m-%d` & `date %H:%M:%S`\"'") # `date +%Y-%m-%d` `date +%H:%M:%S`
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DMY_VER=${VERSION_INFO} -DMY_DATE=${DATE_INFO} -DMY_TOSF_DATE=${TOSF_DATE_INFO}")

SET(PUBLICLIB "/data/home/tdengine/publiclib")
SET(COMM ${PUBLICLIB}/comm)
SET(BOOST_VERSION_1_58 "/data/home/tdengine/shuidu/oss_server/src/dep/boost")
SET(MYSQL_INC ${PUBLICLIB}/mysql/mysql_tlinux_64/include)
SET(MYSQL_LIB ${PUBLICLIB}/mysql/mysql_tlinux_64/lib)
SET(WBL_PATH ${PUBLICLIB}/wbl_oss)
SET(JSON_PATH ${COMM}/dep/jsoncpp-src-0.5.0)
SET(JSON_INC ${JSON_PATH}/include)
SET(JSON_LIB ${JSON_PATH}/libs/linux-gcc-4.4.6)
SET(PROXY_DEP "/data/home/tdengine/pavel/src/dep")
SET(NCS_PATH ${PROXY_DEP}/include)
SET(LIBEVENT_LIB ${PROXY_DEP}/libevent/lib)
SET(LIBEVENT_INC ${PROXY_DEP}/libevent/include)
SET(NEW_MYSQL_PATH ${COMM}/mysql)
SET(BASEERROR_PATH ${COMM}/baseerror)
SET(ENCRYPT_INC ${COMM}/encrypt)
SET(STRINGS_PATH ${COMM}/strings)
SET(WBL_OSS_PATH ${PUBLICLIB}/wbl_oss/include)
SET(WBL_OSS_WBL_PATH ${PUBLICLIB}/wbl_oss/include/wbl) 
SET(WBL_LIB ${PUBLICLIB}/wbl_oss/lib)
SET(FILELOCK_PATH ${COMM}/filelock)
SET(ATOMIC_PATH ${COMM}/atomic)
SET(PNG_INC ${PUBLICLIB}/png/include)
SET(PNG_LIB ${PUBLICLIB}/png/lib)
SET(ZOOKEEPER_INC "/data/home/tdengine/mysqlagent/src/dep/zookeeper-3.4.6/src/c/include")
SET(ZOOKEEPER_SRC "/data/home/tdengine/mysqlagent/src/dep/zookeeper-3.4.6/src/c/src")
SET(ZOOKEEPER_GENERATED_PATH "/data/home/tdengine/mysqlagent/src/dep/zookeeper-3.4.6/src/c/generated")
SET(ZKWATCH_INC ${PUBLICLIB}/zookeeper)
SET(ZOOKEEPER_LIB "/data/home/tdengine/mysqlagent/src/dep/zookeeper-3.4.6/src/c/.libs")
SET(ZKWATCH_LIB "/data/home/tdengine/publiclib/zookeeper/.lib")
SET(LOG_INC ${COMM}/log)
SET(RATE_INC ${COMM}/rate)
SET(PROC_INC ${COMM}/proc)
SET(DIRITER_INC ${COMM}/diriter)
SET(BUFFER_INC ${COMM}/buffer)
SET(STREAM_INC ${COMM}/stream)
SET(INTERVAL_INC ${COMM}/interval)
SET(GTID_INC ${COMM}/gtid)
SET(INIFILE_INC ${COMM}/inifile)
SET(MPCOMM_LIB ${COMM})
SET(SSL_LIB "/data/home/tdengine/openssl/openssl-1.0.2d")
SET(DNS_LIB ${PUBLICLIB}/dns/dns_tlinux_64/lib)
SET(NETSERVER_LIB ${PUBLICLIB}/netserver)
set(LIBARARY_PATH "/data/home/tdengine")
set(BOOST_1_53_PATH ${LIBARARY_PATH}/boost/prefix1_53)
set(BOOST_1_53_LIB ${BOOST_1_53_PATH}/lib)
set(BOOST_1_53_INC ${BOOST_1_53_PATH}/include)
