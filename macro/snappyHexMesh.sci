function snappyHexMesh()
	Toolbox_Path = getenv('Toolbox_Path')
	unix('cp -r '+ Toolbox_Path + '/etc .')
	setenv('LD_LIBRARY_PATH',Toolbox_Path+'/src/')
	setenv('WM_PROJECT_DIR',dir)
	unix_w(Toolbox_Path+'/src/snappyHexMesh')
	unix('rm -rf ./etc')
endfunction
