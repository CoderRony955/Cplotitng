from setuptools import setup, Extension
from Cython.Build import cythonize
import numpy as np 

ext = Extension(
    name="Cplotting",                  
    sources=["plotingops.pyx"],        
    include_dirs=[np.get_include()], 
)

setup(
    name="Cplotting",
    ext_modules=cythonize([ext]),
)
