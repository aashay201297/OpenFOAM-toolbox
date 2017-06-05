%module icoFoam

%{
#include "fvCFD.H"
#include "pisoControl.H"
%}
%inline %{
extern int icoFoam(int argc, char *argv[]);
%}
