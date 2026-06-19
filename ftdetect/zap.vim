autocmd BufRead,BufNewFile *.zap set filetype=zap
" Back-compat: Cap'n Proto schema files share the same syntax.
autocmd BufRead,BufNewFile *.capnp set filetype=zap
