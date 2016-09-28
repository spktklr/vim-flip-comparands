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

function! ComparisonUnderCursor()

    let a:result = search('[<=>]','W')
	:echo a:result

endfunction

"nnoremap <Plug>comparison :<C-U>call <SID>ComparisonUnderCursor()<CR>
"nmap <Leader>9 :call <Plug>comparison

