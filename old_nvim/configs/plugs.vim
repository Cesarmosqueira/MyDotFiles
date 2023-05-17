let g:polyglot_disabled = ['markdown']
call plug#begin('~/.config/nvim/plugged')
Plug 'habamax/vim-habanight'
Plug 'vimsence/vimsence'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
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
Plug 'projekt0n/github-nvim-theme'
" Plug 'nvim-treesitter/nvim-treesitter' {'do': ':TSUpdate'}
Plug 'cdelledonne/vim-cmake'
" ES2015 code snippets (Optional)
Plug 'epilande/vim-es2015-snippets'
" React code snippets
Plug 'epilande/vim-react-snippets'
Plug 'neoclide/coc-snippets'
Plug 'Mofiqul/dracula.nvim'
Plug 'EdenEast/nightfox.nvim'
" 
Plug 'sheerun/vim-polyglot'
Plug 'uiiaoo/java-syntax.vim'
"
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()


map <silent> <C-f> :FZF<CR>
map <silent> <F12> :call CocAction('jumpDefinition', 'drop')<CR> 
map <silent> <F11> :call CocAction('jumpImplementation', 'drop')<CR> 
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')

let g:polyglot_is_disabled={}

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


"vimsence
let g:vimsence_small_text = 'NeoVim'
let g:vimsence_small_image = 'neovim'
let g:vimsence_editing_details = 'Editing: {}'
let g:vimsence_editing_state = 'Working on: {}'
