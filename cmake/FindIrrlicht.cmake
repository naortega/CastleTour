find_path(IRRLICHT_INCLUDE_DIR irrlicht/irrlicht.h
	PATHS ${IRRDIR}/include
	PATH_SUFFIXES irrlicht
)

message(STATUS "IRRLICHT_INCLUDE_DIR = ${IRRLICHT_INCLUDE_DIR}")

find_library(IRRLICHT_LIBRARY NAMES Irrlicht
	PATHS $ENV{IRRDIR}/lib
)

message(STATUS "IRRLICHT_LIBRARY = ${IRRLICHT_LIBRARY}")

if(IRRLICHT_INCLUDE_DIR AND IRRLICHT_LIBRARY)
	set(Irrlicht_FOUND true)
endif(IRRLICHT_INCLUDE_DIR AND IRRLICHT_LIBRARY)
