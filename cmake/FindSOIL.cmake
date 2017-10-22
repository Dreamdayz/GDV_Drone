set(FIND_SOIL_PATHS
        ${CMAKE_CURRENT_SOURCE_DIR}/Dependencies
        )

find_path(SOIL_INCLUDE_DIR SOIL.h   #The variable to store the path in and the name of the header files
        PATH_SUFFIXES include/SOIL               #The folder name containing the header files
        PATHS ${FIND_SOIL_PATHS})       #Where to look (defined above)


IF (WIN32)
    find_library(SOIL_LIBRARY               #The variable to store where it found the .a files
            NAMES SOIL                    #The name of the .a file (without the extension and without the 'lib')
            PATH_SUFFIXES lib                   #The folder the .a file is in
            PATHS ${FIND_SOIL_PATHS})       #Where to look (defined above)
ENDIF (WIN32)

IF (UNIX)
    find_library(SOIL_LIBRARY               #The variable to store where it found the .a files
            NAMES SOIL_MAC                    #The name of the .a file (without the extension and without the 'lib')
            PATH_SUFFIXES lib                   #The folder the .a file is in
            PATHS ${FIND_SOIL_PATHS})       #Where to look (defined above)
ENDIF (UNIX)