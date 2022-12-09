set autoread
inoremap jk <esc>
tnoremap <esc> <C-\><C-n><Cmd>ToggleTerm direction='float'<Cr>
au FocusGained * :checktime

lua require('basic')

lua require('plugin_manage')

lua require('ui')

lua require('util')

lua require('language_support')

colorscheme github_dark
