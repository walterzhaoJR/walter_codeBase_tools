cmake_minimum_required(VERSION 2.8)

project(OSS)

include(OSS_CMAKE_CONFIG.cmake)
include_directories(./ 
                    ./common
                    ./frame
                    ./config
                    ./spark
                    ./proxy
                    ./rapidjson
                    ./load_balance
		            ./kms
                    ${COMM}
                    ${BASEERROR_PATH}                 
                    ${NEW_MYSQL_PATH}                   
                    ${ENCRYPT_INC}
                    ${STRINGS_PATH}
                    ${MYSQL_INC}
                    ${WBL_OSS_WBL_PATH}
                    ${JSON_INC}
                    ${NCS_PATH}
                    ${WBL_OSS_PATH}
                    ${FILELOCK_PATH}
                    ${ATOMIC_PATH}
                    ${ZOOKEEPER_INC}
                    ${ZOOKEEPER_SRC}
                    ${ZKWATCH_INC}
                    ${ZOOKEEPER_GENERATED_PATH}
                    ${PNG_INC}
                    ${LOG_INC}
                    ${RATE_INC}
                    ${PROC_INC}
                    ${DIRITER_INC}
                    ${BUFFER_INC}
                    ${STREAM_INC}
                    ${INTERVAL_INC}
                    ${GTID_INC}
                    ${INIFILE_INC}
                    ${LIBEVENT_INC}
)

set(BOOST_ROOT ${BOOST_VERSION_1_58})
find_package(Boost REQUIRED COMPONENTS
regex
program_options
thread
system
)

if(Boost_FOUND)
    MESSAGE( STATUS "Boost_INCLUDE_DIRS = ${Boost_INCLUDE_DIRS}.")
    MESSAGE( STATUS "Boost_LIBRARIES = ${Boost_LIBRARIES}.")
    MESSAGE( STATUS "Boost_LIB_VERSION = ${Boost_LIB_VERSION}.")
else(Boost_FOUND)
    message("boost not found")
endif()

include_directories(${Boost_INCLUDE_DIRS})

#configure_file( "./version_config.h.in"
#                "./version_config.h"
#)


add_subdirectory(config)
add_subdirectory(frame)
add_subdirectory(spark)
add_subdirectory(proxy)
add_subdirectory(load_balance)
add_subdirectory(kms)

aux_source_directory(. SRC_DIR)
add_executable(${PROJECT_NAME} ${SRC_DIR})

find_library(LIB_JSON_PATH json_linux-gcc-4.4.6_libmt ${JSON_LIB})
target_link_libraries(${PROJECT_NAME} ${LIB_JSON_PATH})

find_library(LIB_MPCOMM_PATH mpcomm ${COMM})
target_link_libraries(${PROJECT_NAME} ${LIB_MPCOMM_PATH})

find_library(LIB_PNG_PATH pngclient ${PNG_LIB})
target_link_libraries(${PROJECT_NAME} ${LIB_PNG_PATH})

find_library(LIB_ZOOKEEPER_PATH zookeeper_mt ${ZOOKEEPER_LIB})
target_link_libraries(${PROJECT_NAME} ${LIB_ZOOKEEPER_PATH})

find_library(LIB_ZKWATCH_PAYH commzookeeper ${ZKWATCH_LIB})
target_link_libraries(${PROJECT_NAME} ${LIB_ZKWATCH_PAYH})

find_library(LIB_WBL_PATH wbl ${WBL_LIB})
target_link_libraries(${PROJECT_NAME} ${LIB_WBL_PATH})

find_library(LIB_ICONV_PATH iconv ${PUBLICLIB})
target_link_libraries(${PROJECT_NAME} ${LIB_ICONV_PATH})

find_library(LIB_EVENT_PATH event ${LIBEVENT_LIB})
target_link_libraries(${PROJECT_NAME} ${LIB_EVENT_PATH})

find_library(LIB_SSL_PATH ssl ${SSL_LIB})
message(${LIB_SSL_PATH})
target_link_libraries(${PROJECT_NAME} ${LIB_SSL_PATH})

find_library(LIB_SSL_CRYPTO_PATH crypto ${SSL_LIB})
message(${LIB_SSL_CRYPTO_PATH})
target_link_libraries(${PROJECT_NAME} ${LIB_SSL_CRYPTO_PATH})

find_library(LIB_MYSQL_CLIENT_PATH mysqlclient ${MYSQL_LIB})
message(${LIB_MYSQL_CLIENT_PATH})
target_link_libraries(${PROJECT_NAME} ${LIB_MYSQL_CLIENT_PATH})

find_library(LIB_DNS_PATH dnscli ${DNS_LIB})
target_link_libraries(${PROJECT_NAME} ${LIB_DNS_PATH})

find_library(LIB_NETSERVER_PATH netserver ${NETSERVER_LIB})
target_link_libraries(${PROJECT_NAME} ${LIB_NETSERVER_PATH})

find_library(QOS64_LIB qos_client64 ${PUBLICLIB}/cl5/libqos_client64-3.2.0)
target_link_libraries(${PROJECT_NAME} ${QOS64_LIB})

find_library(CURL_LIB curl ${LIBARARY}/curl/curl-7.47.1/lib/libs)
target_link_libraries(${PROJECT_NAME} ${CURL_LIB})

find_library(NETAPI_LIB netapi ${PUBLICLIB}/netapi)
target_link_libraries(${PROJECT_NAME} ${NETAPI_LIB})

find_library(PROTOBUF_LIB protobuf ${PUBLICLIB}/protobuf/protobuf-2.4.1_tlinux_64/prefix/lib)
target_link_libraries(${PROJECT_NAME} ${PROTOBUF_LIB})

target_link_libraries(${PROJECT_NAME} pthread)

target_link_libraries(${PROJECT_NAME} expat)

target_link_libraries(${PROJECT_NAME} dl)

target_link_libraries(${PROJECT_NAME} rt)

target_link_libraries(${PROJECT_NAME} z)

target_link_libraries(${PROJECT_NAME} LIB_FRAME)
target_link_libraries(${PROJECT_NAME} LIB_SPARK)
target_link_libraries(${PROJECT_NAME} LIB_MY_CONFIG)
target_link_libraries(${PROJECT_NAME} LIB_PROXY)
target_link_libraries(${PROJECT_NAME} LIB_LOAD_BALANCE)
target_link_libraries(${PROJECT_NAME} LIB_KMS)
target_link_libraries(${PROJECT_NAME} ${Boost_LIBRARIES})
