if exists("g:loaded_latitude")
  finish
endif
let g:loaded_latitude = 1

nnoremap <silent> <Plug>(latitude) :Latitude<CR>
command! -nargs=? Latitude call <SID>nudge(<f-args>)

func! s:nudge(...)
  call latitude#nudge( a:0 ? a:1 : s:default_offset() )
endf

func! s:default_offset()
  return get(g:, 'latitude_offset', 6)
endf
