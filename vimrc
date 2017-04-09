set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"NERD TREE Plugin - tree구조 보여줌
Plugin 'The-NERD-Tree'

" 맨 밑에 상태표시줄 커스터마이징 플러그인
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"파일 검색 플러그인
Plugin 'ctrlpvim/ctrlp.vim'

" XML 자동완성 플러그인
Plugin 'mattn/emmet-vim'

" 주석처리 플러그인
Plugin 'scrooloose/nerdcommenter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



" for vim-airline
" 버퍼리스트를 상단에 출력
let g:airline#extensions#tabline#enabled = 1 
" 버퍼리스트를 이름만 보여줌
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme='luna'
set laststatus=2 " turn on bottom bar

"mapleader 변경하기 (default상태는 \이다)
let mapleader=","

" 줄번호 설정
set nu

"현제 위치 표시
set ruler

"자동 인덴트 설정
set autoindent
set cindent

"파일 인코딩 설정
set fileencoding=utf-8

"구문 강조
if has("syntax")
 syntax on
endif

"하이라이트 활성화
set hls

"미완성 커맨드 표시
set showcmd

"tab 입력시 들어가는 사이즈 설정
:set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<
:set list

"tab사이즈 변경
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4

" ctags설정정보 추가
set autochdir
set tags=tags;

"HTML자동완성 사용
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

"#########################################
"	단축키모음			 #
"#########################################

" Copy & Paste
map <F3> "+y
map <F4> "+p

" NERDTree
map <F5> :NERDTreeToggle<cr>
map <F6> :NERDTreeFind<CR>

" 버퍼이동용 단축키
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>  

" move among buffers with CTRL
map <C-J> :bprev<CR>
map <C-K> :bnext<CR>
