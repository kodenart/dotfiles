set nu rnu
set clipboard=unnamedplus

call plug#begin()

"Plug 'franbach/miramare'

" Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine.
Plug 'honza/vim-snippets'

Plug 'preservim/nerdcommenter'

Plug 'tpope/vim-fugitive'

Plug 'sheerun/vim-polyglot'

Plug 'preservim/nerdtree'

Plug 'vim-airline/vim-airline'

"Auto completer
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Code analizer
Plug 'dense-analysis/ale'

"Mostra a cor de Hex Codes / bom pra editar css
Plug 'gko/vim-coloresque'

Plug 'ryanoasis/vim-devicons'

Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'thaerkh/vim-indentguides'

Plug 'cohama/lexima.vim'

Plug 'morhetz/gruvbox'

Plug 'vim-airline/vim-airline-themes'

" Plug 'mg979/vim-visual-multi', {'branch': 'master'}

call plug#end()



set termguicolors

" the configuration options should be placed before `colorscheme miramare`
"let g:miramare_enable_italic = 1
"let g:miramare_disable_italic_comment = 1

"colorscheme miramare

if !exists('g:airline_symbols')
 let g:airline_symbols = {}
endif

let g:airline_powerline_fonts = 1

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline_theme='gruvbox'

" ==================================================================================

" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1




colorscheme gruvbox

" Configurações do CoC.nvim

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Fim das configurações do CoC.nvim

" Configurações do Vim IndentGuides

let g:indentguides_spacechar = '▏'
let g:indentguides_tabchar = '▏'

" Fim das configurações do Vim IndentGuides


"Mapeamento de Keybinds
			"Salvar
"nnoremap <C-s> :w!<CR>
			"Sair
"nnoremap <C-q> :qa<CR>
			"Mudando de Buffer
nnoremap <F1> :bprevious<CR>
nnoremap <F2> :bnext<CR>
			"Mover a linha
noremap <silent> <C-Down> :m +1<CR>
noremap <silent> <C-Up> :m -2<CR>
      "Copiar para clipboard
"nnoremap <C-c> "+y<CR>
      "Abrir o navegador de arquivos
nnoremap t :NERDTreeToggle<CR>
      "Comentador
nnoremap ,v :call nerdcommenter#Comment(0,"toggle")<CR>
vnoremap ,v :call nerdcommenter#Comment(0,"toggle")<CR>
"map ,c <plug>NERDCommenterSexy

inoremap jk <Esc>

" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"























