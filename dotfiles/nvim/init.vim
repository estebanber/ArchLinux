" Directorio de plugins
call plug#begin('~/.local/share/nvim/plugged')
" IDE
Plug 'kabouzeid/nvim-lspinstall'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
"    Plug 'nvim-lua/plenary.nvim'
"    Plug 'nvim-lua/popup.nvim'
"    Plug 'nvim-telescope/telescope.nvim'
"    Plug 'glepnir/lspsaga.nvim'
"    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"    Plug 'nvim-treesitter/nvim-treesitter-textobjects'
"    Plug 'kdheepak/tabline.nvim'
"    Plug 'glepnir/galaxyline.nvim', { 'branch': 'main' }
"    Plug 'hoob3rt/lualine.nvim'
" If you want to have icons in your statusline choose one of these
"    Plug 'kyazdani42/nvim-web-devicons'
"    Plug 'ryanoasis/vim-devicons'

" ====================================================
" Plug 'vim-scripts/genutils'
" Syntax
" Plug 'vim-syntastic/syntastic'
" Plug 'sheerun/vim-polyglot'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" =====================================
" Color Schemas
Plug 'joshdick/onedark.vim'
Plug 'iCyMind/NeoSolarized'
"Plug 'morhetz/gruvbox'  
Plug 'sainnhe/sonokai'
Plug 'lifepillar/vim-solarized8'
Plug 'arcticicestudio/nord-vim'
Plug 'ayu-theme/ayu-vim'
Plug 'ajmwagar/vim-deus'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'lifepillar/vim-gruvbox8'
" =====================================
" Edition helpers
Plug 'tpope/vim-surround'
"Plug 'jiangmiao/auto-pairs'
"Plug 'preservim/nerdcommenter'
" =====================================
" GUI
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'  " Temas para airline
Plug 'iamcco/sran.nvim', { 'do': { -> sran#util#install() } }
Plug 'iamcco/clock.nvim'
" =====================================
" GIT
Plug 'mhinz/vim-signify'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
Plug 'samoshkin/vim-mergetool'
" =====================================
" Otros
Plug 'metakirby5/codi.vim'
Plug 'mhinz/vim-startify'
call plug#end()
let g:ascii = [
          \ '        __',
          \ '.--.--.|__|.--------.',
          \ '|  |  ||  ||        |',
          \ ' \___/ |__||__|__|__|',
          \ ''
          \]
"let g:startify_custom_header = startify#pad(g:ascii + startify#fortune#boxed())
 let g:startify_custom_header =
            \ startify#pad(split(system('toilet -f standard NeoVIM'), '\n'))

let g:NERDTreeChDirMode = 2  " Cambia el directorio actual al nodo padre actual
let g:NERDTreeIgnore = ['^node_modules$']

let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar sólo el nombre del archivo
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Cargar fuente Powerline y símbolos (ver nota)
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''"

set noshowmode  " No mostrar el modo actual (ya lo muestra la barra de estado)

"set updatetime=100 " Sygnify updatetime

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
" colorscheme gruvbox "Nombre del tema
colorscheme onehalfdark "Nombre del tema
filetype plugin on

let g:mergetool_layout = 'mr'
" let g:mergetool_layout = 'mrb'
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
nmap <silent> <F3> :bp<CR>
nmap <silent> <F4> :bn<CR>
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>
nnoremap <leader>qq :bp\|bd #<CR>

" Arir navegador de buffers
" nmap <unique> <silent> <F5> <Plug>SelectBuf
nmap <silent> <F12> <plug>(MergetoolToggle)
nmap <silent> <leader>te :ClockEnable<CR>
nmap <silent> <leader>td :ClockDisable<CR>

nmap <silent> <M-m> :+0m+1<CR>


vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>y "+y
nmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" Borrar el higlight de una busqueda
nnoremap <silent> <Leader>c :noh<CR><CR>

" Simplificar navegación por los diferentes splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Abrir nuevos splits abajo y a la derecha
set splitbelow
set splitright

" Facilitar el identado
vnoremap > >gv
vnoremap < <gv

" ========= COC ==============================================
" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
"set nobackup
"set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
"inoremap <silent><expr> <TAB>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<TAB>" :
"      \ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
"
"function! s:check_back_space() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~# '\s'
"endfunction
"
"" Use <c-space> to trigger completion.
"inoremap <silent><expr> <c-space> coc#refresh()
"
"" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
"" Coc only does snippet and additional edit on confirm.
"inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"
"" Use `[c` and `]c` to navigate diagnostics
"nmap <silent> [c <Plug>(coc-diagnostic-prev)
"nmap <silent> ]c <Plug>(coc-diagnostic-next)
"
"" Remap keys for gotos
"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)
"
"" Use K to show documentation in preview window
"nnoremap <silent> K :call <SID>show_documentation()<CR>
"
"function! s:show_documentation()
"  if (index(['vim','help'], &filetype) >= 0)
"    execute 'h '.expand('<cword>')
"  else
"    call CocAction('doHover')
"  endif
"endfunction
"
"" Highlight symbol under cursor on CursorHold
"autocmd CursorHold * silent call CocActionAsync('highlight')
"
"" Remap for rename current word
"nmap <leader>rn <Plug>(coc-rename)
"
"" Remap for format selected region
"xmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)
"
"augroup mygroup
"  autocmd!
"  " Setup formatexpr specified filetype(s).
"  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
"  " Update signature help on jump placeholder
"  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
"augroup end
"
"" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
"nmap <leader>a  <Plug>(coc-codeaction-selected)
"
"" Remap for do codeAction of current line
"nmap <leader>ac  <Plug>(coc-codeaction)
"" Fix autofix problem of current line
"nmap <leader>qf  <Plug>(coc-fix-current)
"
"" Use <tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
"nmap <silent> <TAB> <Plug>(coc-range-select)
"xmap <silent> <TAB> <Plug>(coc-range-select)
"xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)
"
"" Use `:Format` to format current buffer
"command! -nargs=0 Format :call CocAction('format')
"
"" Use `:Fold` to fold current buffer
"command! -nargs=? Fold :call     CocAction('fold', <f-args>)
"
"" use `:OR` for organize import of current buffer
"command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
"
"" Add status line support, for integration with other plugin, checkout `:h coc-status`
"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
"
"" Using CocList
"" Show all diagnostics
"nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
"" Manage extensions
"nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
"" Show commands
"nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
"" Find symbol of current document
"nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
"" Search workspace symbols
"nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
"" Do default action for next item.
"nnoremap <silent> <space>j  :<C-u>CocNext<CR>
"" Do default action for previous item.
"nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
"<nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" >> Telescope bindings
"nnoremap <Leader>pp <cmd>lua require'telescope.builtin'.builtin{}<CR>
"
"" most recently used files
"nnoremap <Leader>m <cmd>lua require'telescope.builtin'.oldfiles{}<CR>
"
"" find buffer
"nnoremap ; <cmd>lua require'telescope.builtin'.buffers{}<CR>
"
"" find in current buffer
"nnoremap <Leader>/ <cmd>lua require'telescope.builtin'.current_buffer_fuzzy_find{}<CR>
"
"" bookmarks
"nnoremap <Leader>' <cmd>lua require'telescope.builtin'.marks{}<CR>
"
"" git files
"nnoremap <Leader>f <cmd>lua require'telescope.builtin'.git_files{}<CR>
"
"" all files
"nnoremap <Leader>bfs <cmd>lua require'telescope.builtin'.find_files{}<CR>
"
"" ripgrep like grep through dir
"nnoremap <Leader>rg <cmd>lua require'telescope.builtin'.live_grep{}<CR>
"
"" pick color scheme
"nnoremap <Leader>cs <cmd>lua require'telescope.builtin'.colorscheme{}<CR>
"
"
""" >> setup nerdcomment key bindings
""let g:NERDCreateDefaultMappings = 0
""let g:NERDSpaceDelims = 1
""
""xnoremap <Leader>ci <cmd>call NERDComment('n', 'toggle')<CR>
""nnoremap <Leader>ci <cmd>call NERDComment('n', 'toggle')<CR>
"
"

" LSP config (the mappings used in the default file don't quite work right)
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <space>e <cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>

lua <<EOF
--require'lspconfig'.clangd.setup{}
require("lsp")
require("compe-config")
EOF

"require("treesitter")
"--require("statusbar")
"require("completion")
"require'tabline'.setup {enable = false}
"require('lualine').setup({
"options={theme = onedark"},
"tabline = {
"    lualine_a = {},
"    lualine_b = {},
"    lualine_c = { require'tabline'.tabline_buffers },
"    lualine_x = { require'tabline'.tabline_tabs },
"    lualine_y = {},
"    lualine_z = {},
"  },})
"
