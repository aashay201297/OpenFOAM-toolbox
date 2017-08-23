# OpenFOAM-toolbox
This toolbox will let you use some basic functions of OpenFOAM in Scilab.

This toolbox contains static executables for different OpenFOAM utilities (currently pimpleFoam solver and simpleFoam solver are available but more coming soon :p). 

## Getting Started

### Prerequisites

For ubuntu/debian based systems use:

```
 sudo apt-get install libopenmpi-dev 
 sudo apt-get install openmpi-bin 
 ```
 or for fedora based systems use:
 ```
  sudo dnf install libopenmpi-dev
  sudo dnf install openmpi-bin 
  ```
 
### HOW TO INSTALL AND RUN

Step 1 : Clone from either of the following commands :

```
$ git clone https://github.com/aashay201297/OpenFOAM-toolbox.git
```
OR
```
$ git clone git@git.forge.scilab.org:openfoam.git
```
Step 2 : Run Scilab 
Step 3 : setup environment for the toolbox :
```
cd <TOOLBOX DIRECTORY>
exec('./setup.sce')
```
This will load all the macros

There you go! You can now call the solvers from scilab.

## Calling the solvers

Every solver has a function having the same name as in OpenFOAM. 
Note : The functions can only be called by going into the case directory otherwise it will give error.

### Example

Suppose you are using simpleFoam solver, after doing setup you can run it as follows:
Case 1 - You want the output on the scilab console:
```
simpleFoam()
```
Case 2 - You want to store the output in a log file:
```
simpleFoam(<PATH TO LOG FILE>)
```
### Wrong Usage
This will really mess up your case directory. Please avoid this!
```
simpleFoam(<PATH TO CASE DIRECTORY>)
```
Running the solver in a directory that is not an OpenFOAM case directory will also give an error.



## File Structure

1. demos : This contains two demos i.e. airfoil2D (simpleFoam solver) and planarPoiseuille (pimpleFoam solver)
2. etc : This contains all the files necessary for execution of a solver in Scilab.
3. macro : This contains the Scilab scripts which have the function definitions which execute the solver.
4. setup.sce : This is a script which has to be executed before using the toolbox.
5. src: This contains all the binary files of the libraries.


You can also look into these scripts to see how the solver is called.

Any suggestions or comments are most welcome. Drop me a mail anytime and I will try to respond to your query as soon as possible.



