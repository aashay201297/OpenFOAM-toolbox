# OpenFOAM-toolbox
This toolbox will let you use some basic functions of OpenFOAM in Scilab.

To compile it using SWIG the following commands have been used :

$ swig -scilab icoFoam.i

$ g++ -std=c++11 -fPIC -c -I/usr/local/include/scilab  -I/home/OpenFOAM-toolbox/include icoFoam_wrap.c icoFoam.C

$ g++ -shared icoFoam_wrap.o icoFoam.o -o libicoFoam.so


