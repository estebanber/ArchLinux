" Directorio de plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'iCyMind/NeoSolarized'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'  " Colorschema
Plug 'vim-airline/vim-airline-themes'  " Temas para airline
Plug 'iamcco/sran.nvim', { 'do': { -> sran#util#install() } }
Plug 'iamcco/clock.nvim'
" Plug 'jlanzarotta/bufexplorer'
Plug 'vim-scripts/SelectBuf'
Plug 'vim-scripts/genutils'
Plug 'mhinz/vim-signify'
Plug 'samoshkin/vim-mergetool'
" Aquí irán los plugins a instalar
call plug#end()


let g:NERDTreeChDirMode = 2  " Cambia el directorio actual al nodo padre actual
let g:NERDTreeIgnore = ['^node_modules$']

let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar sólo el nombre del archivo

" Cargar fuente Powerline y símbolos (ver nota)
let g:airline_powerline_fonts = 1
"
set noshowmode  " No mostrar el modo actual (ya lo muestra la barra de estado)

set updatetime=100 " Sygnify updatetime

set title  " Muestra el nombre del archivo en la ventana de la terminal
set number  " Muestra los números de las líneas
" set mouse=a  " Permite la integración del mouse (seleccionar texto, mover el cursor)

set nowrap  " No dividir la línea si es muy larga

set cursorline  " Resalta la línea actual
" set colorcolumn=120  " Muestra la columna límite a 120 caracteres

" Indentación a 4 espacios
set tabstop=4
set shiftwidth=4
set softtabstop=4
set shiftround
set expandtab  " Insertar espacios en lugar de <Tab>s
"
set hidden  " Permitir cambiar de buffers sin tener que guardarlos
"
set ignorecase  " Ignorar mayúsculas al hacer una búsqueda
set smartcase  " No ignorar mayúsculas si la palabra a buscar contiene
" mayúsculas
"
set spelllang=en,es  " Corregir palabras usando diccionarios en inglés y
" español
"
set termguicolors  " Activa true colors en la terminal
set background=dark  " Fondo del tema: light o dark
colorscheme gruvbox "Nombre del tema
filetype plugin on

let g:mergetool_layout = 'mr'
let g:mergetool_layout = 'mrb'
let g:mergetool_prefer_revision = 'local'

set number relativenumber
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu | set rnu   | endif
    autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu | set nornu | endif
augroup END

:let mapleader = ","
" Abrir/cerrar NERDTree con F2
map <F2> :NERDTreeToggle<CR>
" Arir navegador de buffers
nmap <unique> <silent> <F5> <Plug>SelectBuf
nmap <silent> <F3> :bp<CR>
nmap <silent> <F4> :bn<CR>
nmap <silent> <F12> <plug>(MergetoolToggle)
nmap <silent> <leader>ce :ClockEnable<CR>
nmap <silent> <leader>cd :ClockDisable<CR>

