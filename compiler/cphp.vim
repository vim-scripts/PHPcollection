" Vim Compiler File
" Compiler:	php
" Maintainer:	Mikolaj Machowski <mikmach@wp.pl>
" Last Change: sob cze 22 09:00  2002 C
   
if exists("current_compiler")
    finish
endif
let current_compiler = "php"

let s:cpo_save = &cpo
set cpo&vim

set makeprg=export\ QUERY_STRING=$*;php\ $*\ \\\|\ grep\ '</b>\ on\ line\ <b>'
 
set errorformat=<b>%*[^<]</b>:\ \ %m\ in\ <b>%f</b>\ on\ line\ <b>%l</b><br>

let &cpo = s:cpo_save
unlet s:cpo_save
