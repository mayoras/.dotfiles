set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc
call plug#begin('~/.local/share/nvim/plugged')

Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'tpope/vim-fugitive'
Plug 'ryanoasis/vim-devicons'
Plug 'elixir-editors/vim-elixir'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'rust-lang/rust.vim',
Plug 'projekt0n/github-nvim-theme',
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'andweeb/presence.nvim'

" airline extensions
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'

" airline figures
let g:airline_powerline_fonts = 1
let g:airline#extensions#coc#enabled = 1
let g:airline_right_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep= ''
let g:airline_left_sep = ''

" airline symbols
let g:airline_symbols={}
let g:airline_symbols.dirty=' '

" Mappings
nnoremap ,t :NERDTreeToggle<CR>
nnoremap <C-p> :Files<CR>
nnoremap <C-l> :bn<CR>
nnoremap <C-h> :bp<CR>
nnoremap <C-d> :bd<CR>

" Use deoplete at startup
let g:python3_host_prog='/usr/bin/python3'
set rtp+=~/.vim/dein/repos/github.com/Shougo/deoplete.nvim
" let g:deoplete#enable_at_startup = 1

call plug#end()

" Nord config
let g:nord_italic=1
let g:nord_italic_comments=1

" Gruvbox config
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_termcolors = 256
let g:gruvbox_bold=1
let g:gruvbox_italic=1

" Github theme config
" vim.cmd('colorscheme github_dark_dimmed')

" Set theme
if (has("termguicolors"))
    set termguicolors
endif
colorscheme gruvbox
" Match airline theme
let g:airline_theme='gruvbox'

" Rust stuff
let g:rustfmt_autosave = 1

" Misc config
set showtabline=2
let NERDTreeQuitOnOpen=1
let g:NERDTreeHijackNetrw=0
let g:netrw_fastbrowse = 0
set noshowmode
set pumblend=20

source $HOME/.config/nvim/coc.conf.vim
