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
Plug 'gosukiwi/vim-atom-dark'
Plug 'joshdick/onedark.vim'
Plug 'vimwiki/vimwiki'
Plug 'rafamadriz/neon'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'arcticicestudio/nord-vim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'projekt0n/github-nvim-theme'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'cdelledonne/vim-cmake'
" ES2015 code snippets (Optional)
Plug 'epilande/vim-es2015-snippets'
" React code snippets
Plug 'epilande/vim-react-snippets'
Plug 'neoclide/coc-snippets'
" Ultisnips
Plug 'SirVer/ultisnips'
call plug#end()

let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1

map <silent> <C-s> :NERDTreeFocus<CR>

map <silent> <F12> :call CocAction('jumpDefinition', 'drop')<CR> 

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


