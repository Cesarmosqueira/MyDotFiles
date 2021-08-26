call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'beyondmarc/glsl.vim'
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
call plug#end()
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1

map <silent> <C-s> :NERDTreeFocus<CR>

map <silent> <F12> :call CocAction('jumpDefinition', 'drop')<CR> 

"airline config
let g:airline_theme='gruvbox'
let g:airline#extensions#whitespace#enabled = 0

"cpp enhanced highlight config
let c_no_curly_error=1
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1

"vim-polyglot red spaces highlights
let g:python_highlight_space_errors = 0


