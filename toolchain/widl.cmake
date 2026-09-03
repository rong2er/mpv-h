ExternalProject_Add(widl
    DEPENDS
        mingw-w64
    DOWNLOAD_COMMAND ""
    UPDATE_COMMAND ""
    SOURCE_DIR ${MINGW_SRC}
    CONFIGURE_COMMAND ${EXEC} CONF=1 <SOURCE_DIR>/mingw-w64-tools/widl/configure
        --prefix=${CMAKE_INSTALL_PREFIX}
        --target=${TARGET_ARCH}
    BUILD_COMMAND ${MAKE}
    INSTALL_COMMAND ${MAKE} install-strip
    LOG_CONFIGURE 1 LOG_BUILD 1 LOG_INSTALL 1
)

cleanup(widl install)
