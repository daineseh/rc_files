
" Reference https://github.com/skwp/dotfiles/blob/master/vimrc

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effet.
set nocompatible " not compatible with the old-fashion vi mode


" ========== General Config ==========
set nu "Line numbers are good
set history=1000 "Store lots of :cmdline history
set showcmd "Show incompatible cmds down the bottom
set autoread "Reload files changed outside vim


" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" Configuring Vim right
" http://items.sjbach.com/319/configuring-vim-right
set hidden

"turn on sytax highlighting
syntax on

" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all
" the plugins.
let mapleader=","

" ========== Turn Off Swap Files ==========
set noswapfile
set nobackup
set nowb

" 顯示空白 http://softsmith.blogspot.tw/2013/03/vim-tab.html
set listchars=tab:>-,trail:-,extends:#,nbsp:-
set list

" More natural split opening http://goo.gl/Q7sbpw
" Open new split panes to right and bottom, which feels more natural than
" Vim's default
set splitbelow
set splitright

" Easier split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" set cursorline cursorcolumn "Hilight current line and column
" set nocursorline nocursorcolumn "Hilight current line and column

" Show cursorline only in active window of Vim
" http://goo.gl/OPDh5D
"augroup CursorLineOnlyInActiveWindow
"  autocmd!
"  autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
"  autocmd WinLeave * setlocal nocursorline
"augroup END
"hi CursorLine term=bold cterm=bold guibg=Grey40


" ========================================
" " Vim plugin configuration
" " ========================================
" "
" " This file contains the list of plugin installed using vundle plugin
" manager.
" " Once you've updated the list of plugin, you can run vundle update by
" issuing
" " the command :BundleInstall from within vim or directly invoking it from
" the
" " command line with the following syntax:
" " vim --noplugin -u vim/vundles.vim -N "+set hidden" "+syntax on"
" +BundleClean! +BundleInstall +qall
" " Filetype off is required by vundle
"
 filetype off " Vundle required!
"
" "
" http://www.erikzaadi.com/2012/03/19/auto-installing-vundle-from-your-vimrc/
" " Setting up Vundle - the vim plugin bundler
 let iCanHazVundle=1
 let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
 if !filereadable(vundle_readme)
   echo "Installing Vundle.."
     echo ""
  silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
      let iCanHazVundle=0
  endif

  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()


" appearance {{{
" colorscheme
Bundle 'tomasr/molokai'
Bundle 'tpope/vim-vividchalk'

" Bundle 'yonchu/accelerated-smooth-scroll'

Bundle "Yggdroot/indentLine"
" map <leader>il :IndentLinesToggle<CR>
Bundle 'Lokaltog/vim-powerline'

" Bundle "xsunsmile/showmarks.git"
" }}}

" project {{{
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'kien/ctrlp.vim'
" }}}

" git {{{
Bundle "gregsexton/gitv"
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'
" }}}


Bundle 'michaeljsmith/vim-indent-object'

" Provides tab completion while inside the “/” search
Bundle 'vim-scripts/SearchComplete'

" search {{{
Bundle 'mileszs/ack.vim'
" Bundle 'petdance/ack2'
Bundle 'rking/ag.vim'
Bundle 'airblade/vim-rooter'
Bundle 'vim-scripts/EasyGrep'
Bundle 'Lokaltog/vim-easymotion'
Bundle "justinmk/vim-sneak"
Bundle 'vim-scripts/IndexedSearch'

" usage: https://github.com/bronson/vim-visual-star-search
Bundle 'bronson/vim-visual-star-search'
" vim bookmark
Bundle 'MattesGroeger/vim-bookmarks'
" }}}

Bundle 'vim-scripts/mru.vim'

Bundle 'L9'
" vim-autocomplpop
"Automatic trigger complete popup menu (need L9)
Bundle 'othree/vim-autocomplpop'

" vim-scripts pythoncomplete
" To use this plugin, make sure ftplugins are enabled, via "filetype plugin
" on".
Bundle 'vim-scripts/pythoncomplete'

" Bundle 'vim-scripts/Conque-Shell'
Bundle 'acx0/Conque-Shell'

" markdown {{{
Bundle 'godlygeek/tabular'
Bundle 'plasticboy/vim-markdown'
" }}}

" imporvements {{{
Bundle "Raimondi/delimitMate"
" It requires Vim 7.3.885 or above and "if_lua" enabled Vim.
" Bundle 'Shougo/neocomplete.vim'

Bundle 'vim-scripts/Mark'
" Bundle 'vim-scripts/Mark--Karkat'

" use multiple cursors like Sublime Text editor.
Bundle 'terryma/vim-multiple-cursors'
" Bundle "vim-scripts/AutoTag.git"
Bundle "craigemery/vim-autotag"
Bundle "chrisbra/NrrwRgn"
" Bundle "sjl/gundo.vim"
Bundle "goldfeld/ctrlr.vim"
"-
Bundle "vim-scripts/lastpos.vim"
" "}}}

" The plugins listed in ~/.vim/.vundles.local will be added here to
" allow the user to add vim plugins to yadr without the need for a fork.
if filereadable(expand("~/.yadr/vim/.vundles.local"))
  source ~/.yadr/vim/.vundles.local
  endif

  " Filetype plugin indent on is required by vundle
  filetype plugin indent on




" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
""  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
"    \| exe "normal g'\"" | endif
"endif

" Vim - Python WiKi https://wiki.python.org/moin/Vim
filetype indent plugin on

set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
filetype indent on


"  pathogen.vim : Easy manipulation of 'runtimepath', 'path', 'tags', etc 
" call pathogen#infect() 

" filetype plugin on

" let g:pydiction_location = '/home/ming/.vim/bundle/pydiction/complete-dict'
" let g:pydiction_menu_height = 20

" for ctags
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>


colorscheme desert
" colorscheme vividchalk

" (stackoverflow) In my .vimrc, how can I check for the existence of a color scheme?
" http://goo.gl/9M5OYz
try
    colorscheme molokai
catch
endtry
" for gvim
if has('gui_running')
    set guioptions-=T  " no toolbar
    set t_Co=256
"    set guifont=Monaco:h12
"    set guifont=Mono\ Uralic\ 10
    set guifont=Ubuntu\ mono\ 12
    set guifont=Monaco\ 12
" set background=dark
    colorscheme elflord
    colorscheme desert
endif

" keymap


" Highlight all search pattern matches http://vim.wikia.com/wiki/VimTip14
" :nnoremap <F8> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>
" Press Space to turn off highlighting and clear any message already displayed.
" :nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" ,p toggles paste mode
nmap <leader>p :set paste!<BAR>set paste?<CR>

" (gvim) For visuaally selected text
set guioptions+=a
function! MakePattern(text)
  let pat = escape(a:text, '\')
  let pat = substitute(pat, '\_s\+$', '\\s\\*', '')
  let pat = substitute(pat, '^\_s\+', '\\s\\*', '')
  let pat = substitute(pat, '\_s\+',  '\\_s\\+', 'g')
  return '\\V' . escape(pat, '\"')
endfunction
vnoremap <silent> <F8> :<C-U>let @/="<C-R>=MakePattern(@*)<CR>"<CR>:set hls<CR>

" Open every buffer in its own tabpage
" http://vim.wikia.com/wiki/Open_every_buffer_in_its_own_tabpage
" To open each buffer in its own tabpage, add this to your vimrc: 
" :au BufAdd,BufNewFile * nested tab sball

