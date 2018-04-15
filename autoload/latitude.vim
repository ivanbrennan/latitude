if exists("g:autoloaded_latitude")
  finish
endif
let g:autoloaded_latitude = 1

func! latitude#nudge(o) abort
  let offset = min([a:o, winheight(0)/2])

  let bot_want = min([offset, line('$') - line('.')])
  let bot_have = winheight(0) - winline()
  if bot_want > bot_have
    call s:nudge_bot(bot_want - bot_have)
  else
    let top_want = min([offset, line('.') - 1])
    let top_have = winline() - 1
    if top_want > top_have
      call s:nudge_top(top_want - top_have)
    endif
  endif
endf

func! s:nudge_bot(count)
  exec 'normal!' a:count . "\<C-E>"
endf

func! s:nudge_top(count)
  exec 'normal!' a:count . "\<C-Y>"
endf
