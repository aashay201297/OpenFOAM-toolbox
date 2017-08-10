
function pimpleFoamF(varargin)
	[lhs,rhs] = argn(0)
	if rhs > 1 then
		error('wrong number of inputs')
	end
	dir = unix_g('pwd');
	if rhs ~= 0 then 
		file = string(varargin(1));
	end
	setenv('LD_LIBRARY_PATH','/home/aashay/OpenFOAM-toolbox/etc')//change "/home/aashay/gsoc/" to the path where you have cloned the repo
	setenv('WM_PROJECT_DIR',dir)
	if rhs == 0 then
		unix_w('/home/aashay/OpenFOAM-toolbox/pimpleFoam')//change "/home/aashay/gsoc/" to the path where you have cloned the repo
	else 
		cmd = '/home/aashay/OpenFOAM-toolbox/pimpleFoam' + ' > ' + file
		unix_w(cmd)//change "/home/aashay/gsoc/" to the path where you have cloned the repo		
	end
endfunction
