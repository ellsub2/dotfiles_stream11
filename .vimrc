set fenc=utf-8	    "文字コードをutf-8
set nobackup		    "backupを作成しない
set noswapfile		  "swapfileを作成しない
set autoread	  	  "あが更新されても自動読み込みしない
set hidden	    	  "バッファを編集中に他のファイルを読み込み可能に
set showcmd		      "入力中のコマンドをstatusに表示


set number
set cursorline
set cursorcolumn
set smartindent
set visualbell
set showmatch
set laststatus=2


set expandtab		    "tabを半角スペースに
set tabstop=4
set shiftwidth=4
set softtabstop=4 	"連続したスペースをまとめて削除するようにする。この場合連続の定義は2。


"pyFileとrbFileはタブ幅を変える
augroup fileTypeIndent
  autocmd!
  autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4
  autocmd BufNewFile,BufRead *.rb setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END
