
function simpleFoamF(varargin)
	[lhs,rhs] = argn(0)
	if rhs > 1 then
		error('wrong number of inputs')
	end
	dir = unix_g('pwd');
	if rhs ~= 0 then 
		file = string(varargin(1));
	end
	Toolbox_Path = getenv('Toolbox_Path')
	unix('cp -r '+ Toolbox_Path + '/etc .')
	setenv('LD_LIBRARY_PATH',Toolbox_Path+'/src/')
	setenv('WM_PROJECT_DIR',dir)
	if rhs == 0 then
		unix_w(Toolbox_Path+'/src/simpleFoam')
	else 
		cmd = '/src/simpleFoam' + ' > ' + file
		unix_w('Toolbox_Path'+cmd)
	end
	unix('rm -rf ./etc')
endfunction
