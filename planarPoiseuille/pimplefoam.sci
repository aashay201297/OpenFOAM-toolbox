dir = unix_g('pwd');
chdir(dir)
cmd1 = "export LD_LIBRARY_PATH=" + dir;
cmd2 = "export WM_PROJECT_DIR=" + dir;
cmd1
cmd2
unix_w(cmd1)
