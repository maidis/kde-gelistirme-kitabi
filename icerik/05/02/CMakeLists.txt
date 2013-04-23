project(tutorial3)

find_package(KDE4 REQUIRED)
include_directories(${KDE4_INCLUDES})

set(tutorial3_SRCS
  main.cpp
  mainwindow.cpp
)

kde4_add_executable(tutorial3 ${tutorial3_SRCS})

target_link_libraries(tutorial3 ${KDE4_KDEUI_LIBS})

install(TARGETS tutorial3 DESTINATION ${BIN_INSTALL_DIR})
install(FILES tutorial3ui.rc
        DESTINATION  ${DATA_INSTALL_DIR}/tutorial3)
