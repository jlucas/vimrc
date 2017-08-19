source ~/.vimrc

color xterm16

set lines=50
set columns=100
set guioptions=ae  " see: :h guioptions

" Support shift-insert for paste in insert and normal mode.
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

