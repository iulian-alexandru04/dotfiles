packadd minpac

call minpac#init()

" minpac must have {'type': 'opt'} so that it can be loaded with `packadd`.
call minpac#add('k-takata/minpac', {'type': 'opt'})

" Add other plugins here.
call minpac#add('tpope/vim-surround')
call minpac#add('airblade/vim-gitgutter')
call minpac#add('morhetz/gruvbox')

" Colorscheme
colorscheme gruvbox
set background=dark

" Enable both line number and relative numbers
set nu rnu

" Show invisible characters
set list
set listchars=tab:▸\ ,eol:¬

"Invisible character colors 
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" Set tab width to 4
" Use spaces instead of tabs
set ts=4 sts=4 sw=4 expandtab

