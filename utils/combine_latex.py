import os

fpath = '/home/scotty/ds_masters/dsc_255/module_8'

def get_files(fpath):
    cmd = f'find {fpath}/*-*-cr.tex'
    files = os.popen(cmd).read().split('\n')[:-1]
    print(files)
    return(files)

def read_tex_file(fname):
    cmd = f'cat {fname}'
    tex_content = os.popen(cmd).read().split('\n')[:-1]
    print(tex_content)

fnames = get_files(fpath)

read_tex_file(fnames[0])
