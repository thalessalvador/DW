import os
exts=('.sql','.yml','.yaml','.md','.json','.txt','.csv','.tsv','.py','dbt_project.yml')
bad=[]
for root,_,files in os.walk('.'):
    for f in files:
        if not f.endswith(exts):
            continue
        path=os.path.join(root,f)
        try:
            open(path,'r',encoding='utf-8').read()
        except UnicodeDecodeError as e:
            bad.append((path,str(e)))

if bad:
    for p,e in bad:
        print(p)
        print(' ', e)
else:
    print('no utf-8 errors')
