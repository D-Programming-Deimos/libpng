module libpng.pngconf;
/* pngconf.h - machine configurable file for libpng
 *
 * libpng version 1.6.16,December 22, 2014
 *
 * Copyright (c) 1998-2014 Glenn Randers-Pehrson
 * (Version 0.96 Copyright (c) 1996, 1997 Andreas Dilger)
 * (Version 0.88 Copyright (c) 1995, 1996 Guy Eric Schalnat, Group 42, Inc.)
 *
 * This code is released under the libpng license.
 * For conditions of distribution and use, see the disclaimer
 * and license in png.h
 *
 */

/* Any machine specific code is near the front of this file, so if you
 * are configuring libpng for a machine, you may want to read the section
 * starting here down to where it starts to typedef png_color, png_text,
 * and png_info.
 */


/* For png_FILE_p - this provides the standard definition of a
 * FILE
 */
import core.stdc.stdio : FILE;

public:

/* Some typedefs to get us started.  These should be safe on most of the common
* platforms.
*
* png_uint_32 and png_int_32 may, currently, be larger than required to hold a
* 32-bit value however this is not normally advisable.
*
* png_uint_16 and png_int_16 should always be two bytes in size - this is
* verified at library build time.
*
* png_byte must always be one byte in size.
*
* The checks below use constants from limits.h, as defined by the ISOC90
* standard.
*/

alias png_uint_32   = uint;
alias png_int_32    = int;
alias png_uint_16   = ushort;
alias png_int_16    = short;
alias png_byte      = ubyte;

alias png_size_t    = size_t;
alias png_ptrdiff_t = ptrdiff_t;
//#define png_sizeof(x) (sizeof (x))


/* png_alloc_size_t is guaranteed to be no smaller than png_size_t, and no
* smaller than png_uint_32.  Casts from png_size_t or png_uint_32 to
* png_alloc_size_t are not necessary; in fact, it is recommended not to use
* them at all so that the compiler can complain when something turns out to be
* problematic.
*
* Casts in the other direction (from png_alloc_size_t to png_size_t or
* png_uint_32) should be explicitly applied; however, we do not expect to
* encounter practical situations that require such conversions.
*
* PNG_SMALL_SIZE_T must be defined if the maximum value of size_t is less than
* 4294967295 - i.e. less than the maximum value of png_uint_32.
*/
alias png_alloc_size_t = png_size_t;


/* Prior to 1.6.0 libpng offered limited support for Microsoft C compiler
* implementations of Intel CPU specific support of user-mode segmented address
* spaces, where 16-bit pointers address more than 65536 bytes of memory using
* separate 'segment' registers.  The implementation requires two different
* types of pointer (only one of which includes the segment value.)
*
* If required this support is available in version 1.2 of libpng and may be
* available in versions through 1.5, although the correctness of the code has
* not been verified recently.
*/


/* Typedef for floating-point numbers that are converted
 * to fixed-point with a multiple of 100,000, e.g., gamma
 */
alias png_fixed_point = png_int_32;

/* Add typedefs for pointers */
alias png_voidp                 = void                   *;
alias png_const_voidp           = const(void)            *;
alias png_bytep                 = png_byte               *;
alias png_const_bytep           = const(png_byte)        *;
alias png_uint_32p              = png_uint_32            *;
alias png_const_uint_32p        = const(png_uint_32)     *;
alias png_int_32p               = png_int_32             *;
alias png_const_int_32p         = const(png_int_32)      *;
alias png_uint_16p              = png_uint_16            *;
alias png_const_uint_16p        = const(png_uint_16)     *;
alias png_int_16p               = png_int_16             *;
alias png_const_int_16p         = const(png_int_16)      *;
alias png_charp                 = char                   *;
alias png_const_charp           = const(char)            *;
alias png_fixed_point_p         = png_fixed_point        *;
alias png_const_fixed_point_p   = const(png_fixed_point) *;
alias png_size_tp               = png_size_t             *;
alias png_const_size_tp         = const(png_size_t)      *;



alias png_FILE_p                = FILE              *;

alias png_doublep               = double            *;
alias png_const_doublep         = const(double)     *;

/* Pointers to pointers; i.e. arrays */
alias png_bytepp                = png_byte        * *;
alias png_uint_32pp             = png_uint_32     * *;
alias png_int_32pp              = png_int_32      * *;
alias png_uint_16pp             = png_uint_16     * *;
alias png_int_16pp              = png_int_16      * *;
alias png_const_charpp          = const(char)     * *;
alias png_charpp                = char            * *;
alias png_fixed_point_pp        = png_fixed_point * *;
alias png_doublepp              = double          * *;

/* Pointers to pointers to pointers; i.e., pointer to array */
alias png_charppp               = char            * * *;

