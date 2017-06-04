%module inc

%{
#include "fvCFD.H"
#include "pisoControl.H"
%}
%inline %{
extern int inc(int argc, char *argv[]);
%}
