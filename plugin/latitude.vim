if exists("g:loaded_latitude")
  finish
endif
let g:loaded_latitude = 1

let s:default_offset = 6

nnoremap <silent> <Plug>(latitude_nudge)
\ :call latitude#nudge( get(g:, 'latitude_offset', s:default_offset) )<CR>
