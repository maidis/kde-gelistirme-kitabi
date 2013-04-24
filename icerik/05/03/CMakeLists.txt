project(tutorial4)

find_package(KDE4 REQUIRED)
include_directories(${KDE4_INCLUDES})

set(tutorial4_SRCS
  main.cpp
  mainwindow.cpp
)

kde4_add_executable(tutorial4 ${tutorial4_SRCS})

target_link_libraries(tutorial4 ${KDE4_KDEUI_LIBS}
                                ${KDE4_KIO_LIBS})

install(TARGETS tutorial4 DESTINATION ${BIN_INSTALL_DIR})
install(FILES tutorial4ui.rc
        DESTINATION ${DATA_INSTALL_DIR}/tutorial4)
