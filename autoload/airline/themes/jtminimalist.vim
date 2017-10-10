" Theme to mimic the default colorscheme of powerline
" Not 100% the same so it's powerline... ish.
"
" Differences from default powerline:
" * Paste indicator isn't colored different
" * Far right hand section matches the color of the mode indicator
"
" Differences from other airline themes:
" * No color differences when you're in a modified buffer
" * Visual mode only changes the mode section. Otherwise
"   it appears the same as normal mode

" Normal mode                                    " fg             & bg
let s:N1 = [ '#303030' , '#62ae88' , 22  , 148 ] " darkestgreen   & brightgreen
let s:N2 = [ '#9e9e9e' , '#303030' , 247 , 236 ] " gray8          & gray2
let s:N3 = [ '#ffffff' , '#121212' , 231 , 233 ] " white          & gray4

" Insert mode                                    " fg             & bg
let s:I1 = [ '#303030' , '#71849b' , 22  , 148 ] " darkestcyan    & white
let s:I2 = [ '#9e9e9e' , '#303030' , 74  , 31  ] " darkcyan       & darkblue
let s:I3 = [ '#ffffff' , '#121212' , 117 , 24  ] " mediumcyan     & darkestblue

" Visual mode                                    " fg             & bg
let s:V1 = [ '#303030' , '#d2605d' , 232 , 214 ] " gray3          & brightestorange

" Replace mode                                   " fg             & bg
let s:RE = [ '#ffffff' , '#62ae88' , 231 , 160 ] " white          & brightred

let g:airline#themes#jtminimalist#palette = {}

let g:airline#themes#jtminimalist#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#jtminimalist#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#jtminimalist#palette.insert_replace = {
      \ 'airline_a': [ s:RE[0]   , s:I1[1]   , s:RE[1]   , s:I1[3]   , ''     ] }

let g:airline#themes#jtminimalist#palette.visual = {
      \ 'airline_a': [ s:V1[0]   , s:V1[1]   , s:V1[2]   , s:V1[3]   , ''     ] }

let g:airline#themes#jtminimalist#palette.replace = copy(airline#themes#jtminimalist#palette.normal)
let g:airline#themes#jtminimalist#palette.replace.airline_a = [ s:RE[0] , s:RE[1] , s:RE[2] , s:RE[3] , '' ]


let s:IA = [ s:N2[0] , s:N3[1] , s:N2[2] , s:N3[3] , '' ]
let g:airline#themes#jtminimalist#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)

