"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle For Managing Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype on                  " required
set encoding=utf-8
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()		" required, all plugins must appear after this line.
Plugin 'gmarik/Vundle.vim'							" Vundle
Plugin 'powerline/powerline'
Plugin 'vim-airline/vim-airline'					" Airline
Plugin 'vim-airline/vim-airline-themes'				" Airline Themes
Plugin 'scrooloose/nerdtree'						" added nerdtree
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'ryanoasis/vim-devicons'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'vim-python/python-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'jreybert/vimagit'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'vimwiki/vimwiki'                            " Vim wiki
Plugin 'ap/vim-css-color'                           " Color previews for CSS
Plugin 'tpope/vim-surround'                         " Change surrounding marks
Plugin 'hsitz/VimOrganizer'							" Org Mode
Plugin 'myhere/vim-nodejs-complete'
call vundle#end()		" required, all plugins must appear before this line.

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Powerline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Powerline
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
"set t_Co=256

syntax enable
set relativenumber

let g:rehash256 = 1
let g:Powerline_symbols='unicode'
"let g:Powerline_theme='long'

let g:airline#extensions#tabline#enabled = 0
let g:airline_powerline_fonts = 1
let g:airline_theme='angr'

" Uncomment to prevent non-normal modes showing in powerline and below powerline.
set noshowmode

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Uncomment to autostart the NERDTree
" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Minimap
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:minimap_show='<leader>mm'
let g:minimap_update='<leader>mu'
let g:minimap_close='<leader>mc'
let g:minimap_toggle='<leader>mt'
let g:minimap_highlight='Visual'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" colorscheme nord
hi LineNr ctermfg=242
hi CursorLineNr ctermfg=15
hi VertSplit ctermfg=8 ctermbg=0
hi Statement ctermfg=3

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Splits and Tabbed Files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set splitbelow splitright

set path+=**					" Searches current directory recursively.
set wildmenu					" Display all matches when tab complete.
set incsearch
set nobackup
set noswapfile

let g:minimap_highlight='Visual'

let g:python_highlight_all = 1
syntax on

au! BufRead,BufWrite,BufWritePost,BufNewFile *.org
au BufEnter *.org            call org#SetOrgFileType()

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar


let g:javascript_plugin_jsdoc = 1
set conceallevel=1

