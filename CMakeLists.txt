cmake_minimum_required(VERSION 3.7)
project(GDV_Drone)

set(CMAKE_CXX_STANDARD 14)
#set(CMAKE_CXX_FLAGS -m32)
#set(CMAKE_C_FLAGS -m32)
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/cmake")


set(SOURCE_FILES
        teil_1.cpp
        Wuerfel.cpp
        Wuerfel.h)
add_executable(GDV_Drone ${SOURCE_FILES})

find_package(OpenGL REQUIRED)
find_package(GLUT REQUIRED)
find_package(SOIL REQUIRED)

include_directories(${SOIL_INCLUDE_DIR} ${OPENGL_INCLUDE_DIRS} ${GLUT_INCLUDE_DIRS} /usr/local/Cellar/freeglut/3.0.0/include)
target_link_libraries(${PROJECT_NAME} ${SOIL_LIBRARY} ${OPENGL_LIBRARIES} ${GLUT_LIBRARY})


file(COPY "Resources" DESTINATION ${CMAKE_BINARY_DIR})
file(COPY "Dependencies" DESTINATION ${CMAKE_BINARY_DIR})

IF (WIN32)
    #file(COPY "C:/Program Files/msys64/mingw64/bin/libgcc_s_seh-1.dll" DESTINATION ${CMAKE_BINARY_DIR})
    #file(COPY "C:/Program Files/msys64/mingw64/bin/libfreeglut.dll" DESTINATION ${CMAKE_BINARY_DIR})
    #file(COPY "C:/Program Files/msys64/mingw64/bin/libstdc++-6.dll" DESTINATION ${CMAKE_BINARY_DIR})
    #file(COPY "C:/Program Files/msys64/mingw64/bin/libwinpthread-1.dll" DESTINATION ${CMAKE_BINARY_DIR})
ENDIF (WIN32)