let g:go_version_warning = 0
" usefrul tip
" use "q/" or "q?" to dispaly the history of search in a separate window
" use "q:" to dispaly the history of command in a separate window
" search and replace ":3,9s/ttt/TTT/gic", here "i" for case insensitive 
" and "c" for confirmation
" search and replace "%s/ttt/TTT/g"
"
"
"
" the clipboard of external editor  will go in register "*". So for copying something to the clipboard register you type "*y 
" and then to put you type "*p

"Unix uses 0xA for a newline character. Windows uses a combination of two characters: 0xD 0xA. 
"0xD is the carriage return character. ^M happens to be the way vim displays 0xD
"(0x0D = 13, M is the 13th letter in the English alphabet). You can remove all the ^M characters by running the following: :%s/^M//g.
"To enter ^M, type CTRL-V, then CTRL-M. That is, hold down the CTRL key then press V and M in succession.
"below one is to remove the space after the comments \\....
"%s/^\/\/\s\+//g
"vimgrep /ttt/ *
"copen 
" to remove trailing space
" %s/\s\+$//e

" indent for python code
" use command %retab! softtabstop


"================================================================
" with below setup, no save reqired before saving
set hidden

" Set compatibility to Vim only.
set nocompatible

" Helps force plug-ins to load correctly when it is turned back on below.
filetype off

" Turn on syntax highlighting.
syntax on

" For plug-ins to load correctly.
filetype plugin indent on

" Turn off modelines
set modelines=0


set nu
set ruler
set cursorline


set mouse+=a
set ttymouse=xterm2

" Uncomment below to set the max textwidth. Use a value corresponding to the width of your screen.
" set textwidth=79
"set formatoptions=tcqrn1


set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

"set noexpandtab       " no Expand TABs to spaces
set expandtab       " Expand TABs to spaces
set autoindent       " Expand TABs to spaces

set hlsearch

set nowrap

set noshiftround


set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list!

set nolist

" Display different types of white spaces.
"set list
"set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" Include matching uppercase words with lowercase search term
set ignorecase
" Include only uppercase words with uppercase search term
set smartcase

" Store info from no more than 100 files at a time, 9999 lines of text, 100kb of data. Useful for copying large amounts of data between files.
set viminfo='100,<9999,s100


" Display 5 lines above/below the cursor when scrolling with a mouse.
set scrolloff=5
" Fixes common backspace problems
set backspace=indent,eol,start

" Speed up scrolling in Vim
set ttyfast

" Status bar
set laststatus=2

" Display options
set showmode
set showcmd

" Highlight matching pairs of brackets. Use the '%' character to jump between them.
set matchpairs+=<:>


" Set status line display
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

" Encoding
set encoding=utf-8

"set foldmethod=indent
"set foldmethod=syntax
set foldlevel=1
"set foldclose=all

" to check below link for backup swp ...
"https://medium.com/@Aenon/vim-swap-backup-undo-git-2bf353caa02f
"set backupdir=~/.vim/backup
"set directory=~/.vim/swp
"set undodir=~/.vim/undodir

"cscopequickfix' specifies whether to use quickfix window to show cscope results.
set cscopequickfix=s-,c-,d-,i-,t-,e-
set splitbelow
set splitright
set foldmethod=manual
set wrap linebreak 
set formatoptions+=t 

" MAKE IT EASY TO UPDATE/RELOAD _vimrc
nmap ,s :source ~/.vimrc
nmap ,v :e ~/.vimrc


" Vim's auto indentation feature does not work properly with text copied from outisde of Vim. Press the <F2> key to toggle paste mode on/off.
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>

"map shift + F3 as 'copen'  to open  quickfix list
"notice it is not working with map <S-F3 > but below one is working
" <press ctrl-V><press shift+<F3> and generate the code '[1;2R'>
"map [1;2R :copen<CR>
map <F3> :vimgrep //g **/*.c<Left><Left><Left><Left><Left><Left><Left><Left><Left>
nmap <leader><F3> :copen <CR> 
nnoremap <F4> :buffers<CR>:buffer<Space>
map <F5> <ESC>yiw<ESC>
map <F6> <ESC>ciw<C-r>0<ESC>
map <F7> <ESC>viw"qy<ESC>

" Map the <Space> key to toggle a selected fold opened/closed.
"nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
"vnoremap <Space> zf
"inoremap <F7> <C-O>za
"nnoremap <F7> za
"onoremap <F7> <C-C>za
"vnoremap <F7> zf

nmap <F8> :TagbarToggle<CR>
map <F9> <Nop>

" window  tab 
map <F10> <Esc>:tabnew<CR>
"map <leader>F12 to toggle line relative number in normal mode
nmap <leader><F12> :set rnu! <CR> 


" List contents of all registers (that typically contain pasteable text).
nnoremap <silent> "" :registers "0123456789abcdefghijklmnopqrstuvwxyz*+.<CR>

map <F10> <Esc>:tabnew<CR>


"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"
"set switchbuf+=usetab,newtab

map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>

map ,l zfi{

" Press * to search for the term under the cursor or a visual selection and
" then press a key below to replace all instances of it in the current file.
nnoremap <Leader>r :%s///g<Left><Left>
nnoremap <Leader>rc :%s///gc<Left><Left><Left>

" The same as above but instead of acting on the whole file it will be
" restricted to the previously visually selected range. You can do that by
" pressing *, visually selecting the range you want it to apply to and then
" press a key below to replace all instances of it in the current selection.
xnoremap <Leader>r :s///g<Left><Left>
xnoremap <Leader>rc :s///gc<Left><Left><Left>

nmap <F8> :TagbarToggle<CR>


" to save folding setting 
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview



" to install plugin  "matchit"
" configure expanding of tabs for various file types
au BufRead,BufNewFile *.py set expandtab nolist
au BufRead,BufNewFile *.c set noexpandtab nolist
au BufRead,BufNewFile *.h set noexpandtab nolist
au BufRead,BufNewFile Makefile* set noexpandtab

packadd! matchit



"
"
"
"
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
"Plug 'junegunn/seoul256.vim'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'


" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'jremmen/vim-ripgrep'

" Dim paragraphs above and below the active paragraph.
Plug 'junegunn/limelight.vim'
"
" " Distraction free writing by removing UI elements and centering everything.
Plug 'junegunn/goyo.vim'
"

" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'

"ctrlP
"Plug 'ctrlpvim/ctrlp.vim'

"It's easiest to explain with examples. Press cs"' inside
"Hello world!" to change it to 'Hello world!'
Plug 'tpope/vim-surround'


"
"grayout.vim is a simple plugin that grays out inactive preprocessor blocks.
" not working , seems no Python support
"Plug 'mphe/grayout.vim'


Plug 'vimwiki/vimwiki'

" not in use now
"Plug 'suan/vim-instant-markdown', {'for': 'markdown'}

Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

"Plug 'idbrii/vim-ack'

Plug 'mileszs/ack.vim'

Plug 'majutsushi/tagbar'
Plug 'chrisbra/vim-commentary'

Plug 'vim-scripts/c.vim'

Plug 'godlygeek/tabular'

"Plug 'mphe/grayout.vim'

Plug 'vim-scripts/ifdef.vim'
" 
"Plug 'ycm-core/YouCompleteMe'
Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
"Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'mbbill/undotree'
Plug 'gnattishness/cscope_maps'
Plug 'mphe/grayout.vim'
"Plug 'preservim/nerdcommenter'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
"
"
"
"

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


" .............................................................................
" junegunn/fzf.vim
" .............................................................................

let $FZF_DEFAULT_OPTS = '--bind ctrl-a:select-all'

" Launch fzf with CTRL+P.
nnoremap <silent> <C-p> :FZF -m<CR>

" Map a few common things to do with FZF.
nnoremap <silent> <Leader><Enter> :Buffers<CR>
nnoremap <silent> <Leader>l :Lines<CR>
" Allow passing optional flags into the Rg command.
"   Example: :Rg myterm -g '*.md'
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \ "rg --column --line-number --no-heading --color=always --smart-case " .
  \ <q-args>, 1, fzf#vim#with_preview(), <bang>0)

"Provides highlighting for  #ifdef  #ifndef  #else  #endif  blocks, with the ability to mark a symbol as defined or undefined. 
"Handles nesting of #ifdefs (and #if) as well, but does not handle  #if defined(). 
"not workin now and  commented 
"syntax=c.ifdef 

let g:ackprg = "ag --vimgrep"


set nolist

let g:go_version_warning = 0

