syntax on
set encoding=utf-8
set number
set relativenumber
set cursorline
set wrap
set showcmd
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set smartcase

set scrolloff=10
set timeoutlen=300

map <c-f> <c-f>zz
map <c-b> <c-b>zz
let mapleader=' '

map <LEADER>rc :e ~/.vim/vimrc<CR>
map <LEADER>T :NERDTree<CR>

"s(split) l,h,j,k split screen rightside or below and decide where the cursor
"
"use Ctrl+w and hjkl to move cursor
"
map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sj :set splitbelow<CR>:split<CR>
map sk :set nosplitbelow<CR>:split<CR>



" to resize screen
map <up> :resize +5<CR>
map <down> :resize -5<CR>
map <left> :vertical resize -5<CR>
map <right> :vertical resize +5<CR>

"cancel highlight of searching
let @/=""

"tab h(left) tab l(right)  
"to change tab in vim
map th :-tabnext<CR>
map tl :+tabnext<CR>


" using plug to install extension in vim
call plug#begin()

Plug 'vim-airline/vim-airline'

Plug 'connorholyday/vim-snazzy'
Plug 'morhetz/gruvbox'

Plug 'liuchengxu/vim-which-key'

Plug 'neoclide/coc.nvim', {'branch':'release'}
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build', 'branch': 'main' }
Plug 'kevinoid/vim-jsonc'

"NERDTree to search file
Plug 'preservim/nerdtree'

"git extension
Plug 'tpope/vim-fugitive'

"start
Plug 'mhinz/vim-startify'

Plug 'kgreenek/vim-ros-ycm'

call plug#end()


"Vim-which-key
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

colorscheme snazzy
set termguicolors

"in vimrc, type ....to reload the file
map .... :w<CR>:so %<CR>


" :w ! sudo tee %


"config coc completion
"https://github.com/neoclide/coc.nvim/wiki/Completion-with-sources
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <silent><expr> <cr> coc#pum#visible() && coc#pum#info()['index'] != -1 ? coc#pum#confirm() : "\<C-g>u\<CR>"
" use <tab> for trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR> 
