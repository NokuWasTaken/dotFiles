"     _       _   ______ _             
"    | |     | | |  ____(_) |            
"  __| | ___ | |_| |__   _| | ___  ___ 
" / _` |/ _ \| __|  __| | | |/ _ \/ __| Author : Noku
"| (_| | (_) | |_| |    | | |  __/\__ \ GitHub: github.com/NokuWasTaken
" \__,_|\___/ \__|_|    |_|_|\___||___/ These dotFiles are licensed under the GNU GPL v2 free use License
"

"""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""

call plug#begin("~/.vim/plugged")

"{{ Basics }}"

Plug 'mhinz/vim-startify'                                               " Fancy Vim start screen 
Plug 'itchyny/lightline.vim'						" Lightline Statusbar
Plug 'frazrepo/vim-rainbow'						
Plug 'bagrat/vim-buffet'						" Buffer Tabpages
Plug 'airblade/vim-gitgutter' 						" Git highlighting

"{{ File Management}}"

Plug 'preservim/nerdtree'						" NERDTree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'				" Higlighting NERDTree
Plug 'ryanoasis/vim-devicons'  						" Icons for NERDTree 

"{{Syntax Higlighting, colors and autoFill }}"

Plug 'neoclide/coc.nvim', {'branch': 'release'}	" autoFill plugin
Plug 'github/copilot.vim' 				" GitHub Copilot
Plug 'preservim/nerdcommenter'   		" Commenting
Plug 'dag/vim-fish'						" .fish file higlighting
Plug 'https://gitlab.com/gi1242/vim-emoji-ab' " Vim emojis
Plug 'dracula/vim', { 'as': 'dracula' }	" Vim colorsheme

"{{ snippets }}"

Plug 'SirVer/ultisnips'					" ultisnipps
Plug 'honza/vim-snippets' 				" vim-snippets

call plug#end()

"""""""""""""""""""""""""""""""""""
" => General Vim Settings
"""""""""""""""""""""""""""""""""""

set number relativenumber 				" Display line numbers
set clipboard=unnamedplus				" Copy/Paste between vim and other programs.
set noswapfile							" No swap
set nobackup 							" No backup
set hidden								" needed to keep multiple buffers open

"""""""""""""""""""""""""""""""""""
" => set Leader Key to SPACE
"""""""""""""""""""""""""""""""""""

let mapleader = " "

"""""""""""""""""""""""""""""""""""
" => Statusbar
"""""""""""""""""""""""""""""""""""

" set theme to oneDark
let g:lightline = {
      \ 'colorscheme': 'one',
      \ }

" always show statusline
set laststatus=2

" prevents non-normal modes from showing below lightline
set noshowmode


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set expandtab                   					" Use spaces instead of tabs.
set smarttab                    					" Be smart using tabs ;)
set shiftwidth=4                					" One tab == four spaces.
set tabstop=4                   					" One tab == four spaces.
set completefunc=emoji#complete                     " add emoji completition

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <C-n> :NERDTreeToggle<CR>								
let g:NERDTreeDirArrowExpandable = '►'		
let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=38
                                                        
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Open terminal inside Vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <Leader>tt :vnew term://fish<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mouse Scrolling
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set mouse=nicr
set mouse=a

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Splits and Tabbed Files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set splitbelow splitright

" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Make adjusing split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" Change 2 split windows from vert to horiz or horiz to vert
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

" Removes pipes | that act as seperators on splits
set fillchars+=vert:\ 

"""""""""""""""""""""""""""""""""""
" => Map Esc to ii 
"""""""""""""""""""""""""""""""""""

:inoremap ii <Esc>


"""""""""""""""""""""""""""""""""""
" => Vim-buffet 
"""""""""""""""""""""""""""""""""""

nmap <leader>1 <Plug>BuffetSwitch(1)
nmap <leader>2 <Plug>BuffetSwitch(2)
nmap <leader>3 <Plug>BuffetSwitch(3)
nmap <leader>4 <Plug>BuffetSwitch(4)
nmap <leader>5 <Plug>BuffetSwitch(5)
nmap <leader>6 <Plug>BuffetSwitch(6)
nmap <leader>7 <Plug>BuffetSwitch(7)
nmap <leader>8 <Plug>BuffetSwitch(8)
nmap <leader>9 <Plug>BuffetSwitch(9)
nmap <leader>0 <Plug>BuffetSwitch(10)


"""""""""""""""""""""""""""""""""""
" => Startify
"""""""""""""""""""""""""""""""""""

let g:startify_bookmarks = systemlist("cut -sd' ' -f 2- ~/.NERDTreeBookmarks") " add NERDTree Bookmarks to startify

