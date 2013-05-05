project(tutorial5)

find_package(KDE4 REQUIRED)
include_directories(${KDE4_INCLUDES})

set(tutorial5_SRCS
  main.cpp
  mainwindow.cpp
)

kde4_add_executable(tutorial5 ${tutorial5_SRCS})

target_link_libraries(tutorial5 ${KDE4_KDEUI_LIBS}
                                ${KDE4_KIO_LIBS})

install(TARGETS tutorial5 DESTINATION ${BIN_INSTALL_DIR})
install(FILES tutorial5ui.rc
        DESTINATION  ${DATA_INSTALL_DIR}/tutorial5)
