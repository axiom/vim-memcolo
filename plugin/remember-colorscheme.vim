function! s:SaveColo()
	execute "silent !echo colorscheme " . g:colors_name . " > " . g:MemcoloPath()
endfunction

function! g:MemcoloPath()
	if exists('g:memcolo_path')
		let path=g:memcolo_path
	else
		let path='~/.vim/color.vim'
	endif

	return expand(path)
endfunction

augroup memcolo
	autocmd!
	autocmd ColorScheme * :call <SID>SaveColo()
augroup END
