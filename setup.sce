dir = unix_g('pwd');
setenv('Toolbox_Path',dir)
exec(dir+'/'+'macro/simplefoam.sci')
exec(dir+'/'+'macro/pimplefoam.sci')
exec(dir+'/'+'macro/blockMesh.sci')
exec(dir+'/'+'macro/decomposePar.sci')
exec(dir+'/'+'macro/icoFoam.sci')
exec(dir+'/'+'macro/setFields.sci')
exec(dir+'/'+'macro/surfaceFeatureExtract.sci')
exec(dir+'/'+'macro/snappyHexMesh.sci')
