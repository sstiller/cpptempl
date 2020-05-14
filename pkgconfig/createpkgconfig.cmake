set(PKGCONFIG_FILE "${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}.pc")

set(LIB_INSTALL_PATH lib)
set(PKGCONFIG_INSTALL_PATH "${LIB_INSTALL_PATH}/pkgconfig")

set(PKG_CONFIG_LIBDIR
  "\${prefix}/lib"
)
set(PKG_CONFIG_INCLUDEDIR
  "\${prefix}/include/elfin"
)
SET(PKG_CONFIG_LIBS
	"-L\${libdir} -lboost_system -l${PROJECT_NAME}"
)
set(PKG_CONFIG_CFLAGS
  "-I\${includedir}"
)

configure_file(
  "${CMAKE_CURRENT_SOURCE_DIR}/pkgconfig/pkg-config.pc.in"
  ${PKGCONFIG_FILE}
)

install(FILES ${PKGCONFIG_FILE} DESTINATION ${PKGCONFIG_INSTALL_PATH})
