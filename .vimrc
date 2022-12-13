"This is Ljy's vimrc
"A student from BIT(Beijing Institude of Technology)
"I enjoy everything that I'm doing
"
"QQmail: 1161871240@qq.com
"Wechat: li116871240
"Gmail: nearfar1jy@gmail.com
"Github: https://github.com/Lnearfar
"
"vim is a very powerful editor
"The reason why I choose vim because my vscode in the virtual machine is so
"slow and only vim can be used by me smoothly. However, after using vim, I
"cant turn back to vscode because of it's convenience. One of the best hackers
"just use the basic funtion of vim to code and work, it's impressive and
"remind me that the most important thing is what to code, or algorithm. 
"
syntax on
set encoding=utf-8
set number
set relativenumber
set wrap
set showcmd
set tabstop=2
set shiftwidth=2
set autoindent
set smartcase

set scrolloff=10
set timeoutlen=300

map <c-f> <c-f>zz
map <c-b> <c-b>zz
let mapleader=' '

"a magic map haha
nmap ; :
nmap : :

"=================================================
"=====================OpenTerminal=====================
"=================================================
nmap ot :let $VIM_DIR=expand('%:p:h')<CR>:terminal<CR>cd $VIM_DIR<CR>

"=================================================
"=====================vimrc=====================
"=================================================
map <LEADER>rc :e ~/.vimrc<CR>
"in vimrc, type ....to reload the file
map .... :w<CR>:so %<CR>

"=================================================
"==================run file===================
"=================================================
autocmd FileType python map <buffer> <LEADER>R :w<CR>:exec '!python3' shellescape(@%, 1)<CR>

"=================================================
"==============Auto Closing brackets===============
"=================================================
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

"=================================================
"=====================NERDTree=====================
"=================================================
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

nmap nt :tabnew<CR>

"=================================================
"=====================VimPlug=====================
"=================================================
" using plug to install extension in vim
call plug#begin()

Plug 'itchyny/lightline.vim'
"Plug 'vim-airline/vim-airline'

"auto complete brankets
Plug 'jiangmiao/auto-pairs'
"Plug 'connorholyday/vim-snazzy'
Plug 'morhetz/gruvbox'

Plug 'liuchengxu/vim-which-key'

Plug 'neoclide/coc.nvim', {'branch':'release'}

Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build', 'branch': 'main' }
Plug 'kevinoid/vim-jsonc'

"NERDTree to search file
Plug 'preservim/nerdtree'

"git extension
Plug 'tpope/vim-fugitive'

call plug#end()

"=================================================
"======================Theme======================
"=================================================
set background=dark
autocmd vimenter * ++nested colorscheme gruvbox

"=================================================
"==================Vim-which-key================
"=================================================
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

"=================================================
"==================Coc-Nvim Settings================
"=================================================

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

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

hi Normal guibg=NONE ctermbg=NONE
