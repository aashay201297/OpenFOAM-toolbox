dir = input('',"string")
chdir(dir)
unix_w('blockMesh')
unix_w("pimpleFoam")