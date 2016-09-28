" vim-flip-comparands Flip comparands

" Authors:      Niko Myllynen <niko.myllynen@gmail.com>
" Version:      0.1

if exists('g:FlipComparands_loaded')
    finish
endif
let g:FlipComparands_loaded = 1

" TODO:
" Write function that looks for the nearest comparison operator.
" If found, it determines the comparands. Then it flips them.
" Make this function bindable to a key command.

function! s:comparisonUnderCursor()

	:echo "ei"
    if search('[<=>]','W') >0
		:echo "Jepa"
	end

endfunction

nnoremap <silent> <Plug>comparison :<C-U>call <SID>comparisonUnderCursor()<CR>
nmap <Leader>f :call <Plug>comparison

