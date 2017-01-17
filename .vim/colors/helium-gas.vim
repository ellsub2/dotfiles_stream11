"----------------------------------------------------------------------
" Name         : helium-gas
" Version      : 0.2 [未完成]
" Created by   : heliumu
" StartMaking  : 2015/06/26
" LastUpdate   : 2015/06/29
" LISENCE      : MIT
"----------------------------------------------------------------------

set background=dark                      " bgcolor
highlight clear                          " 現在のハイライト,シンタックスの設定をすべて削除
if exists("syntax_on")                   " 構文解析的something
	syntax reset
endif
let g:colors_name = 'helium-gas'         " カラースキームのファイル名を設定

"----------------------------------------------------------------------
" highlight {group-name} {key}={arg} ...
" group : 文字色 背景色 フォント
"         guifg  guibg  gui
"         cuifg  cuibg  cui
"----------------------------------------------------------------------

" Text--------
hi Normal          guifg=#AFAFAF guibg=#171717          " デフォルト
hi NonText         guifg=#75715E                        " EOF以降の~など??
hi Comment         guifg=#748285                        " コメント

" 値--------
hi Boolean         guifg=#EE5E6C                        " bool値
hi Character       guifg=#EE5E6C                        " 文字
hi SpecialChar     guifg=#BE6062               gui=none " \0とか
hi Number          guifg=#BE6062                        " 数字
hi String          guifg=#BBBF60                        " 文字列
hi Constant        guifg=#BE6062               gui=bold " 定数

" カーソル,行--------
hi LineNr          guifg=#828282 guibg=#232526          " 行番号
hi CursorLine                    guibg=#293739          " 'cursorline'オン時のカーソルがある画面上の行
hi CursorLineNr    guifg=#FD971F guibg=#232526          " カーソル行番号
hi Cursor          guifg=#000000 guibg=#F8F8F0          " カーソル
hi iCursor         guifg=#000000 guibg=#F8F8F0          " Insert時のカーソル

" ステータスライン--------
hi ModeMsg         guifg=#E6DB74                        " --insert--とか
hi Title           guifg=#ef5939                        " :set allとかの出力
hi MoreMsg         guifg=#E6DB74
hi ErrorMsg        guifg=#BD305C guibg=#171717 gui=bold " Cmdlineに表示されるErrorMsg
hi StatusLine      guifg=#455354 guibg=fg               " アクティブStatusLine
hi StatusLineNC    guifg=#808080 guibg=#080808          " 非アクティブStatusline
hi WarningMsg      guifg=#FFFFFF guibg=#EAED5B gui=bold " 警告文

hi Exception       guifg=#A6E22E               gui=bold
hi Float           guifg=#AE81FF
hi FoldColumn      guifg=#465457 guibg=#000000
hi Folded          guifg=#465457 guibg=#000000
hi Function        guifg=#E0CB67                        " 関数,クラスメソッド
hi Identifier      guifg=#B288C3                        " 識別子
hi Ignore          guifg=#808080 guibg=bg               " 空白,不可視??
hi IncSearch       guifg=#C4BE89 guibg=#000000
hi Directory       guifg=#A6E22E               gui=bold " Directory
hi Error           guifg=#E6DB74 guibg=#1E0010          " Error,なんか間違ってるぞ!ってやつ

hi Conditional     guifg=#6687A9               gui=none " ifとか 
hi Debug           guifg=#BCA3A3               gui=bold "
hi Define          guifg=#66D9EF
hi Delimiter       guifg=#8F8F8F
hi DiffAdd                       guibg=#13354A
hi DiffChange      guifg=#89807D guibg=#4C4745
hi DiffDelete      guifg=#960050 guibg=#1E0010
hi DiffText                      guibg=#4C4745 gui=italic,bold

hi Keyword         guifg=#F92672               gui=bold
hi Label           guifg=#E6DB74               gui=none
hi Macro           guifg=#C4BE89               gui=italic
hi SpecialKey      guifg=#66D9EF               gui=italic

hi MatchParen      guifg=#000000 guibg=#FD971F gui=bold
hi Operator        guifg=#88B8B0 " 演算子,+,*,sizeof...

" complete menu
hi Pmenu           guifg=#66D9EF guibg=#000000
hi PmenuSel                      guibg=#808080
hi PmenuSbar                     guibg=#080808
hi PmenuThumb      guifg=#66D9EF

hi PreCondit       guifg=#A6E22E               gui=bold
hi PreProc         guifg=#6FAB6F " numberとかincludeとか
hi Question        guifg=#66D9EF
hi Repeat          guifg=#6687A9               gui=none " 繰り返し
hi Search          guifg=#000000 guibg=#FFE792
" marks
hi SignColumn      guifg=#A6E22E guibg=#232526
hi SpecialComment  guifg=#7E8E91               gui=bold
hi Special         guifg=#66D9EF guibg=bg      gui=italic
if has("spell")
    hi SpellBad    guisp=#FF0000 gui=undercurl
    hi SpellCap    guisp=#7070F0 gui=undercurl
    hi SpellLocal  guisp=#70F0F0 gui=undercurl
    hi SpellRare   guisp=#FFFFFF gui=undercurl
endif
hi Statement       guifg=#6C97AE               gui=none " letとか
hi vimCommand      guifg=#6C97AE                        " hiとか
hi StorageClass    guifg=#FD971F               gui=italic
hi Structure       guifg=#66D9EF
hi Tag             guifg=#F92672               gui=italic
hi Todo            guifg=#FFFFFF guibg=bg      gui=bold

hi Typedef         guifg=#66D9EF
hi Type            guifg=#C79D33 gui=none " guifg とかintとか
hi Underlined      guifg=#808080               gui=underline

hi VertSplit       guifg=#808080 guibg=#080808 gui=bold
hi VisualNOS                     guibg=#403D3D
hi Visual                        guibg=#403D3D
hi WildMenu        guifg=#66D9EF guibg=#000000

hi TabLineFill     guifg=#1B1D1E guibg=#1B1D1E
hi TabLine         guibg=#1B1D1E guifg=#808080 gui=none


