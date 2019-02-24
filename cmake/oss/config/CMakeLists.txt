aux_source_directory(. SRC_CONFIG)
add_library(LIB_MY_CONFIG ${SRC_CONFIG})

#注意这里，要为生成的.a文件添加另外一个.a文件，否则最后的oss_server连接就会出问题
find_library(LIB_MPCOMM_PATH mpcomm ${COMM})
target_link_libraries(LIB_MY_CONFIG ${LIB_MPCOMM_PATH})
