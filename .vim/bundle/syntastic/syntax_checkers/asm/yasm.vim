"============================================================================
"File:        yasm.vim
"Description: Syntax checking plugin for syntastic.vim
"Maintainer:  Håvard Pettersson <haavard.pettersson at gmail dot com>
"License:     This program is free software. It comes without any warranty,
"             to the extent permitted by applicable law. You can redistribute
"             it and/or modify it under the terms of the Do What The Fuck You
"             Want To Public License, Version 2, as published by Sam Hocevar.
"             See http://sam.zoy.org/wtfpl/COPYING for more details.
"
"============================================================================

if exists('g:loaded_syntastic_asm_yasm_checker')
    finish
endif
let g:loaded_syntastic_asm_yasm_checker = 1

let s:save_cpo = &cpo
set cpo&vim

function! SyntaxCheckers_asm_yasm_GetLocList() dict
    let buf = bufnr('')
    let makeprg = self.makeprgBuild({
        \ 'args_after': '-g dwarf2 -f elf64' .
        \       ' -I ' . syntastic#util#shescape(fnamemodify(bufname(buf), ':p:h') . syntastic#util#Slash()) .
        \       ' ' . syntastic#c#NullOutput() })

    let errorformat = '%f:%l: %t%*[^:]: %m'

    return SyntasticMake({
        \ 'makeprg': makeprg,
        \ 'errorformat': errorformat })
endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({
    \ 'filetype': 'asm',
    \ 'name': 'yasm'})

let &cpo = s:save_cpo
unlet s:save_cpo

" vim: set sw=4 sts=4 et fdm=marker:
