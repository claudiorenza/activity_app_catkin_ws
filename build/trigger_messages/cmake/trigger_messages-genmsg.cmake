# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "trigger_messages: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(trigger_messages_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/kloudpix/catkin_ws/src/trigger_messages/srv/MessageServer.srv" NAME_WE)
add_custom_target(_trigger_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "trigger_messages" "/home/kloudpix/catkin_ws/src/trigger_messages/srv/MessageServer.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(trigger_messages
  "/home/kloudpix/catkin_ws/src/trigger_messages/srv/MessageServer.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trigger_messages
)

### Generating Module File
_generate_module_cpp(trigger_messages
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trigger_messages
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(trigger_messages_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(trigger_messages_generate_messages trigger_messages_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kloudpix/catkin_ws/src/trigger_messages/srv/MessageServer.srv" NAME_WE)
add_dependencies(trigger_messages_generate_messages_cpp _trigger_messages_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(trigger_messages_gencpp)
add_dependencies(trigger_messages_gencpp trigger_messages_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS trigger_messages_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(trigger_messages
  "/home/kloudpix/catkin_ws/src/trigger_messages/srv/MessageServer.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trigger_messages
)

### Generating Module File
_generate_module_eus(trigger_messages
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trigger_messages
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(trigger_messages_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(trigger_messages_generate_messages trigger_messages_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kloudpix/catkin_ws/src/trigger_messages/srv/MessageServer.srv" NAME_WE)
add_dependencies(trigger_messages_generate_messages_eus _trigger_messages_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(trigger_messages_geneus)
add_dependencies(trigger_messages_geneus trigger_messages_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS trigger_messages_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(trigger_messages
  "/home/kloudpix/catkin_ws/src/trigger_messages/srv/MessageServer.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trigger_messages
)

### Generating Module File
_generate_module_lisp(trigger_messages
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trigger_messages
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(trigger_messages_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(trigger_messages_generate_messages trigger_messages_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kloudpix/catkin_ws/src/trigger_messages/srv/MessageServer.srv" NAME_WE)
add_dependencies(trigger_messages_generate_messages_lisp _trigger_messages_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(trigger_messages_genlisp)
add_dependencies(trigger_messages_genlisp trigger_messages_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS trigger_messages_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(trigger_messages
  "/home/kloudpix/catkin_ws/src/trigger_messages/srv/MessageServer.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trigger_messages
)

### Generating Module File
_generate_module_nodejs(trigger_messages
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trigger_messages
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(trigger_messages_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(trigger_messages_generate_messages trigger_messages_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kloudpix/catkin_ws/src/trigger_messages/srv/MessageServer.srv" NAME_WE)
add_dependencies(trigger_messages_generate_messages_nodejs _trigger_messages_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(trigger_messages_gennodejs)
add_dependencies(trigger_messages_gennodejs trigger_messages_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS trigger_messages_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(trigger_messages
  "/home/kloudpix/catkin_ws/src/trigger_messages/srv/MessageServer.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trigger_messages
)

### Generating Module File
_generate_module_py(trigger_messages
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trigger_messages
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(trigger_messages_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(trigger_messages_generate_messages trigger_messages_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kloudpix/catkin_ws/src/trigger_messages/srv/MessageServer.srv" NAME_WE)
add_dependencies(trigger_messages_generate_messages_py _trigger_messages_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(trigger_messages_genpy)
add_dependencies(trigger_messages_genpy trigger_messages_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS trigger_messages_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trigger_messages)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trigger_messages
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(trigger_messages_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trigger_messages)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trigger_messages
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(trigger_messages_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trigger_messages)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trigger_messages
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(trigger_messages_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trigger_messages)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trigger_messages
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(trigger_messages_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trigger_messages)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trigger_messages\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trigger_messages
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(trigger_messages_generate_messages_py std_msgs_generate_messages_py)
endif()
