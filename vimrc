" Options
set shiftwidth=4
set softtabstop=4
set expandtab

" Features
syntax enable

" Filetypes
autocmd Filetype make setlocal shiftwidth& softtabstop& noexpandtab
autocmd BufNewFile,BufRead *.md set filetype=markdown
