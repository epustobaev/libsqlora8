cmake_minimum_required(VERSION 3.7)
project(sqlora8)

set(CMAKE_C_STANDARD 99)
set(OCI8_LIBRARY "/u01/app/oracle/product/11.2.0/xe/lib/")
set(OCI8_INCLUDE_DIR "/u01/app/oracle/product/11.2.0/xe/rdbms/public/")
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/cmake")
add_library(sqlora8 SHARED ${SOURCE_FILES} libsqlora8-config.h testlora.c sqlora_compat.c)
set_target_properties(sqlora8 PROPERTIES LINKER_LANGUAGE C)

find_package(OCI8 REQUIRED)
include_directories(${OCI8_INCLUDE_DIRS})
set(LIBS ${LIBS} ${OCI8_LIBRARIES})

install(FILES sqlora.h DESTINATION include)
install(TARGETS sqlora8 DESTINATION lib)
