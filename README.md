# OpenFOAM-toolbox
This toolbox will let you use some basic functions of OpenFOAM in Scilab.

This toolbox contains static executables for different OpenFOAM utilities (currently pimpleFoam solver and simpleFoam solver are available but more coming soon :p). 

## HOW TO INSTALL AND RUN

Firstly, to clone this repository git lfs needs to be installed as this repository has some files above 100 MB.

Install git-lfs from the following link : https://git-lfs.github.com/

Then clone again if you have already cloned it. (obviously after removing the previous clone)
If it is still not working then download the project from here : https://drive.google.com/open?id=0B1Z_zi0X1eaURmNNb0xWdkl2SWs

Then go into any one of the examples (i.e planarPoiseuille or airFoil2D) using :

```
$ cd planarPoiseuille 
```
OR 
```
cd $ cd airFoil2D
```
After this we need to initialise some environment variables. Run the following :

```
source env.sh
```
NOTE : Run this command in the case directory for the solver to work 

Then finally run scilab and execute the script (pimplefoam.sci or simplefoam.sci) to run the solver OR you can also run the following command:
```
unix_w('./simpleFoam-static')
```
for simpleFoam solver

OR 
```
unix_w('./pimpleFoam-static')
```
for pimpleFoam solver

You can also look into these scripts to see how the solver is called.

Any suggestions or comments are most welcome. Drop me a mail anytime and I will try to respond to your query as soon as possible.



