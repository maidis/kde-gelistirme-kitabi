project (tutorial2)

find_package(KDE4 REQUIRED)
include_directories(${KDE4_INCLUDES})

set(tutorial2_SRCS 
  main.cpp
  mainwindow.cpp
)

kde4_add_executable(tutorial2 ${tutorial2_SRCS})
target_link_libraries(tutorial2 ${KDE4_KDEUI_LIBS})
