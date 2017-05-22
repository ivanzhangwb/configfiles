nnoremap <f5> :!ctags -R<CR>

"== 正常模式下, f10 触发NERD开关
nmap <f10> :NERDTreeToggle<CR>

"== command+s 触发保存
map <C-s> <esc>:w<CR>a

" == w!! 快捷键 ===> w !sudo tee % > /dev/null
cmap w!! w !sudo tee % >/dev/null

