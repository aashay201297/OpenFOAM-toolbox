dir = unix_g('pwd');
setenv('Toolbox_Path',dir)
exec(dir+'/'+'macro/simplefoam.sci')
exec(dir+'/'+'macro/pimplefoam.sci')
exec(dir+'/'+'macro/blockMesh.sci')
