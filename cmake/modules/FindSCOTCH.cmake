INCLUDE(FindPackageHandleStandardArgs)
INCLUDE(PackageManagerPaths)

FIND_PATH(SCOTCH_INCLUDES NAMES scotch.h 
                          PATHS ${PACKMAN_INCLUDE_PATHS} 
                          PATH_SUFFIXES scotch)

FIND_LIBRARY(SCOTCH_LIBRARIES NAMES scotch 
                              PATHS ${PACKMAN_LIBRARIES_PATHS})

IF(SCOTCH_INCLUDES AND SCOTCH_LIBRARIES)
  SET(SCOTCH_FOUND True)
  MESSAGE(STATUS "A library with SCOTCH API found.")
ENDIF(SCOTCH_INCLUDES AND SCOTCH_LIBRARIES)

FIND_PACKAGE_HANDLE_STANDARD_ARGS(SCOTCH DEFAULT_MSG SCOTCH_INCLUDES SCOTCH_LIBRARIES)

