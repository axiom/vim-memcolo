let g:memcolo_path = "~/.vim/color.vim"

function! s:SaveColor()
	execute "silent !echo colorscheme " . g:colors_name . " > " . g:memcolo_path
endfunction

augroup memcolo
	autocmd!
	autocmd ColorScheme * :call <SID>SaveColor()
augroup END

execute "source " . g:memcolo_path
