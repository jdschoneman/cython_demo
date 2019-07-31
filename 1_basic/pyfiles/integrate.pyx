# Standalone version of the demo integration function.

import cython
from libc.math cimport sin, cos

# Declare as a C function (cdef)
cdef double f(double x) except*:  # Add types to function signature
    return sin(x)*cos(x)

# Declare as a C/python function (cpdef)
@cython.cdivision(True)  # Remove error checking on python division
cpdef double integrate(double a, double b, int N) except*:  # Add types to function signature
    cdef int i  # Declare using "cdef"
    cdef double s, dx  # Declare using "cdef"
    
    s = 0
    dx = (b-a)/N
    for i in range(N):
        s += f(a+i*dx)
    return s * dx

