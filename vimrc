" 줄번호 설정
set nu

"현제 위치 표시
set ruler

"자동 인덴트 설정
set autoindent
set cindent

"파일 인코딩 설정
set fileencoding=utf-8
"esc를 누를경우 영문키보드로 전환
"inoremap <ESC> <ESC>:set imdisable<CR>
set noimd
"set imi=1
"set ims=-1

"구문 강조
if has("syntax")
 syntax on
endif

"컬러 스킴 사용
"colorscheme jellybeans
"잘 모르니깐 일단 남겨두자 나중에 컬러스킴도 꼭 세팅해 봐야지 ㅋㅋㅋ
