from distutils.core import setup
from Cython.Build import cythonize

setup(
	name = 'Cython Demo',
	ext_modules = cythonize("integrate.pyx")
	)

