"Vim plugin for define run shortcuts
"Last change: 2018/01/29
"Mantainer: Lazaro millares <lazaro.millares@gmail.com>

if exists("g:vrun_loaded") && exists(':AsyncRun')
    finish
endif
let g:vrun_loaded = 1


function! s:vrunloadshortcuts()
python << EOF
import json
import vim
try:
    with open('.vrunconfig', 'r') as vrun_config_file:
        vrun_config = json.loads(vrun_config_file.read())
        for key, command in vrun_config.items():
            vim.command('nnoremap {0} :AsyncRun {1}<CR>'.format(key, command))
    f.close()
except:
    pass 
EOF
endfunction

call s:vrunloadshortcuts()

command -nargs=0 VrunReLoad :call s:vrunloadshortcuts()
