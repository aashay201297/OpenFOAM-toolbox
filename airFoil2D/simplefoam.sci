
function simpleFoamF(varargin)
	[lhs,rhs] = argn(0)
	if rhs > 1 then
		error('wrong number of inputs')
	end
	if rhs == 0 then
		dir = unix_g('pwd');
	else
		dir = string(varargin(1))
	end
	chdir(dir)
	setenv('LD_LIBRARY_PATH','/home/aashay/OpenFOAM-toolbox/airFoil2D:/home/aashay/OpenFOAM-toolbox/airFoil2D/etc')//change "/home/aashay/gsoc/" to the path where you have cloned the repo
	setenv('WM_PROJECT_DIR',dir)
	unix_w('/home/aashay/OpenFOAM-toolbox/airFoil2D/simpleFoam')//change "/home/aashay/gsoc/" to the path where you have cloned the repo
endfunction
