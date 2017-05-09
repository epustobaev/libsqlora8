# Copyright (C) 2007-2009 LuaDist.
# Created by Peter Kapec <kapecp@gmail.com>
# Redistribution and use of this file is allowed according to the terms of the MIT license.
# For details see the COPYRIGHT file distributed with LuaDist.
#	Note:
#		Searching headers and libraries is very simple and is NOT as powerful as scripts
#		distributed with CMake, because LuaDist defines directories to search for.
#		Everyone is encouraged to contact the author with improvements. Maybe this file
#		becomes part of CMake distribution sometimes.

# - Find Oracle OCI8
# Find the native OCI8 headers and libraries.
#
# OCI8_INCLUDE_DIRS	- where to find oci.h, etc.
# OCI8_LIBRARIES	- List of libraries when using oci8.
# OCI8_FOUND	- True if oci8 found.

# Look for the header file.
FIND_PATH(OCI8_INCLUDE_DIR NAMES oci.h oratypes.h ociapr.h ocidem.h)

# Look for the library.
FIND_LIBRARY(OCI8_LIBRARY NAMES clntsh)

# Handle the QUIETLY and REQUIRED arguments and set OCI8_FOUND to TRUE if all listed variables are TRUE.
INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(OCI8 DEFAULT_MSG OCI8_LIBRARY OCI8_INCLUDE_DIR)

# Copy the results to the output variables.
IF(OCI8_FOUND)
	SET(OCI8_LIBRARIES ${OCI8_LIBRARY})
	SET(OCI8_INCLUDE_DIRS ${OCI8_INCLUDE_DIR})
ELSE(OCI8_FOUND)
	SET(OCI8_LIBRARIES)
	SET(OCI8_INCLUDE_DIRS)
ENDIF(OCI8_FOUND)

MARK_AS_ADVANCED(OCI8_INCLUDE_DIRS OCI8_LIBRARIES)
