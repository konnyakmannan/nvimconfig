-- setting
----------
vim.g['eskk#directory'] = '~/.config/eskk'
vim.g['eskk#dictionary'] = {
    path='~/.config/eskk/my_jisyo', sorted=1, encoding='utf-8'
}
vim.g['eskk#large_dictionary'] = {
    path='/usr/share/skk/SKK-JISYO.L', sorted=1, encoding='euc-jp'
}
vim.g['eskk#egg_like_newline'] = 1
vim.g['eskk#keep_state'] = 0
vim.g['g:eskk#kakutei_when_unique_candidate'] = 1
vim.g['eskk#marker_henkan'] = '$'
vim.g['eskk#marker_henkan_select'] = '^'
vim.g['eskk#enable_completion'] = 0

