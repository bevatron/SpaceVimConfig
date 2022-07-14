function! MySpaceVim#before() abort
  set nonumber
  set norelativenumber
  let g:neomake_c_enabled_makers = ['clangtidy']
  let g:lsp_diagnostics_enabled = 1
  let g:lsp_diagnostics_echo_cursor=1
  let g:fugitive_summary_format = '%d %s'

  "let g:lsp_diagnostics_enabled = 0
  "let g:lsp_log_verbose = 1
  "let g:lsp_log_file = expand('~/vim-lsp.log')
  "let g:asyncomplete_log_file = expand('~/asyncomplete.log')
endfunction

function! MySpaceVim#after() abort
  "ask to just open file in current buffer
  let g:Lf_JumpToExistingWindow = 0
endfunction
