/* libsqlora8-config.h
 * @configure_input@
 */

#ifndef LIBSQLORA8_CONFIG_H
#define LIBSQLORA8_CONFIG_H

#define LIBSQLORA8_MAJOR_VERSION @LIBSQLORA8_MAJOR_VERSION@
#define LIBSQLORA8_MINOR_VERSION @LIBSQLORA8_MINOR_VERSION@
#define LIBSQLORA8_MICRO_VERSION @LIBSQLORA8_MICRO_VERSION@
#define LIBSQLORA8_INTERFACE_AGE @LIBSQLORA8_INTERFACE_AGE@
#define LIBSQLORA8_BINARY_AGE    @LIBSQLORA8_BINARY_AGE@

#define LIBSQLORA8_VERSION "@LIBSQLORA8_VERSION@"

/* This is set to 1 if the library was compiled with a thread package */
#define LIBSQLORA8_THREADED @LIBSQLORA8_THREADED@

/* If LIBSQLORA8_THREADED is 1, this define tells you which package was used
 * It is either "posix" or "oracle"
 */
#define LIBSQLORA8_THREADS "@LIBSQLORA8_THREADS@"

#ifdef __MINGW32__
#define _int64 __int64
#endif

#endif
