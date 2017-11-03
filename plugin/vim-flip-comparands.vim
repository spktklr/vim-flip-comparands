" vim-flip-comparands Flip comparands

" Authors:      Niko Myllynen <niko.myllynen@gmail.com>
" Version:      0.1

if exists('g:FlipComparands_loaded')
    finish
endif
let g:FlipComparands_loaded = 1

function! ComparisonUnderCursor()

  let a:result = getline('.')[col('.')-1]
  if a:result =~# "[=!<>]"
    normal 2F wdf WhpldW3F pw
  else
    :echo "Place the cursor over a comparison operator."
  endif

endfunction

command! FlipC call ComparisonUnderCursor()

