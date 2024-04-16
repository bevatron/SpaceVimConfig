

function! SpaceVim#layers#private#plugins() abort
	let plugins = []
	call add(plugins, ['inkarkat/vim-ingo-library', {
				\ 'loadconf' : 1,
				\ 'merged' : 0,
				\ }])
	call add(plugins, ['inkarkat/vim-mark', {
				\ 'loadconf' : 1,
				\ 'merged' : 0,
				\ }])
	return plugins
endfunction

function! SpaceVim#layers#private#set_variable(opt) abort
endfunction

function! SpaceVim#layers#private#config() abort
	let g:_spacevim_mappings_space.s.m = {'name' : '+Mark'}
	call SpaceVim#mapping#space#def('nmap', ['s', 'm', "m"], '<Plug>MarkSet', 'mark-word-under-cursor', 0, 1)
	call SpaceVim#mapping#space#def('xmap', ['s', 'm', "m"], '<Plug>MarkSet', 'mark-visual-selection', 0, 1)
	call SpaceVim#mapping#space#def('nmap', ['s', 'm', "u"], '<Plug>MarkAllClear', 'umark-all', 0, 1)
	call SpaceVim#mapping#space#def('nmap', ['s', 'm', "n"], '<Plug>MarkSearchNext', 'mark-search-next', 0, 1)
	call SpaceVim#mapping#space#def('nmap', ['s', 'm', "p"], '<Plug>MarkSearchPrev', 'mark-search-prev', 0, 1)
	call SpaceVim#mapping#space#def('nmap', ['s', 'm', "*"], '<Plug>MarkSearchCurrentNext', 'mark-search-current-next', 0, 1)
	call SpaceVim#mapping#space#def('nmap', ['s', 'm', "p"], '<Plug>MarkSearchCurrentPrev', 'mark-search-current-prev', 0, 1)
endfunction

