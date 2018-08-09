set title "そのまま
set number "文字数
set hidden "保存してなくても複数ファイル開開ける

set matchtime=1 "上記の時間「0.? s」
set tabstop=4 "tab幅がスペース4つ分
set expandtab "tabを半角スペースで挿入
set shiftwidth=4 "vimが自動生成するtab幅がスペース4つ分
set smartindent "改行時などの自動インデント
set display=lastline "長くても最後まで表示
set virtualedit=block "文字のないところにカーソル移動できる
set whichwrap=b,s,[,],<,> "カーソル回りこみ
set backspace=indent,eol,start "バックスペースを空白や行末でも使用できる
set pumheight=10 "ホップアップメニューの高さ
nnoremap Y y$ "マッピングYを行末までヤンク
noremap <S-h> ^ "「Shift-h」で行頭移動
noremap <S-l> $ "「Shift-l」で行末移動
nnoremap == gg=G'' "バッファ全体のインデント整理
syntax on "そのまま

if version < 600
  syntax clear
elseif exists('b:current_after_syntax')
  finish
endif

" We need nocompatible mode in order to continue lines with backslashes.
" Original setting will be restored.
let s:cpo_save = &cpo
set cpo&vim

syn match pythonOperator "\(+\|=\|-\|\^\|\*\)"
syn match pythonDelimiter "\(,\|\.\|:\)"
syn keyword pythonSpecialWord self

hi link pythonSpecialWord    Special
hi link pythonDelimiter      Special

let b:current_after_syntax = 'python'

let &cpo = s:cpo_save
unlet s:cpo_save
