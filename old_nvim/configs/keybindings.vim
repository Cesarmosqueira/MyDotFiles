map <silent> <C-c> :noh<CR>

noremap <silent> <C-j> :resize +1<CR>
noremap <silent> <C-k> :resize -1<CR>
noremap <silent> <C-h> :vertical resize -1<CR>
noremap <silent> <C-l> :vertical resize +1<CR>

"jumping
nnoremap <C-S-Down> <C-W>j
nnoremap <C-S-Up> <C-W>k
nnoremap <C-S-Right> <C-W>l
nnoremap <C-S-Left> <C-W>h

"Fzf
nmap <space>p  :Telescope find_files<CR>

"Coc-explorer <Space>e | <Space>f
"nmap <silent> <C-h> <Cmd>CocCommand explorer<CR>

nmap <silent> <a-s-o> <Cmd>CocCommand tsserver.organizeImports<CR>
nmap <silent> <a-s-e> <Cmd>CocCommand java.clean.workspace<CR>
"nmap <space>la <Cmd> CocAction <CR>
nmap <space>la <Cmd> call CocAction('codeAction', '') <CR>

nmap <silent> <F3> <Cmd>CocList diagnostics<CR>


" CMake
let g:cmake_link_compile_commands = 1
nmap <C-g> <Cmd>CMakeGenerate<cr>
nmap <C-b> <Cmd>CMakeBuild<cr>




