import os

file_exts = ['*.fdb','*.synctex.gz','*.fdb_latexmk','*.fls','*.log','*.aux','*.out','*.toc']
send_it = True

def find_junk(file_exts):
    junk_abs_fpaths = []
    for ext in file_exts:
        cmd = f"find /home/scotty/ds_masters/ -type f -name '{ext}'"
        fpaths = os.popen(cmd).read().split('\n')[:-1]
        junk_abs_fpaths += fpaths

    junk_abs_fpaths = [i for i in junk_abs_fpaths if len(i) > 1]
    print(junk_abs_fpaths)
    return(junk_abs_fpaths)

def clean_house(fpaths):
    print(len(fpaths))
    if len(fpaths) > 0:
        for fpath in fpaths:
            cmd = f"rm -f {fpath}"
            if send_it:
                print(f"removing: {fpath}")
                os.system(cmd)
            else:
                print("usr is skurrrr'd..here is cmd")
                print(cmd)
    else:
        print("house is clean.. nada dang thing to clean")



fpaths = find_junk(file_exts)
clean_house(fpaths)


