"=============================================================================
" unreal.vim --- SpaceVim unreal layer
" Copyright (c) Clustech
" Author: Chris Chen< chris@clustech.com.au>
" URL: clustech.com.au
"=============================================================================

function! MySpaceVim#before() abort
  set nonumber
  set norelativenumber

  let s:ccflag = 1

  let g:python3_host_prog = 'c:\Program Files\Python311\python.exe'
  "let g:neomake_c_enabled_makers = ['clangtidy']
  "let g:lsp_diagnostics_enabled = 1
  "let g:lsp_diagnostics_echo_cursor=1
  "let g:fugitive_summary_format = '%d %s'

  "let g:lsp_diagnostics_enabled = 0
  "let g:lsp_log_verbose = 1
  "let g:lsp_log_file = expand('~/vim-lsp.log')
  "let g:asyncomplete_log_file = expand('~/asyncomplete.log')
  call SpaceVim#layers#core#statusline#toggle_mode("fill-column-indicator")
endfunction

function! MySpaceVim#after() abort
  "ask to just open file in current buffer
  let g:Lf_JumpToExistingWindow = 0
endfunction
