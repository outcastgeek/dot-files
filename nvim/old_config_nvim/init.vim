
" Store the Plugins in Dir
call plug#begin('~/.local/share/nvim/plugged')
  Plug 'alaviss/nim.nvim'
  Plug 'dart-lang/dart-vim-plugin'
  Plug 'dense-analysis/ale'
  Plug 'fatih/vim-go'
  Plug 'flazz/vim-colorschemes'
  Plug 'jiangmiao/auto-pairs'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'kien/ctrlp.vim'
  Plug 'natebosch/vim-lsc'
  Plug 'natebosch/vim-lsc-dart'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'omnisharp/omnisharp-vim'
  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'psf/black', { 'branch': 'stable' }
  Plug 'puremourning/vimspector'
  Plug 'rust-lang/rust.vim'
  Plug 'sainnhe/sonokai'
  Plug 'shougo/vimproc.vim', {'do': 'make'}
  Plug 'scrooloose/nerdtree'
  Plug 'scrooloose/nerdcommenter'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'thosakwe/vim-flutter'
  Plug 'tpope/vim-dispatch'
  Plug 'tpope/vim-fugitive'
  Plug 'udalov/kotlin-vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'ziglang/zig.vim'
call plug#end()

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" :::: Python
"augroup black_on_save
"  autocmd!
"  autocmd BufWritePre *.py Black
"augroup end
"
"nnoremap <F9> :Black<CR>

"let g:ale_fixers = {}
"let g:ale_fixers.python = ['black']

"" :::: Nim
au User asyncomplete_setup call asyncomplete#register_source({
    \ 'name': 'nim',
    \ 'whitelist': ['nim'],
    \ 'completor': {opt, ctx -> nim#suggest#sug#GetAllCandidates({start, candidates -> asyncomplete#complete(opt['name'], ctx, start, candidates)})}
    \ })

" :::: Dart
let g:lsc_server_commands = {'dart': 'dart_language_server'}
let g:lsc_enable_autocomplete = v:true
" Use all the defaults (recommended):
let g:lsc_auto_map = v:true

" Apply the defaults with a few overrides:
let g:lsc_auto_map = {'defaults': v:true, 'FindReferences': '<leader>r'}

" Setting a value to a blank string leaves that command unmapped:
let g:lsc_auto_map = {'defaults': v:true, 'FindImplementations': ''}

" ... or set only the commands you want mapped without defaults.
" Complete default mappings are:
let g:lsc_auto_map = {
    \ 'GoToDefinition': 'gd',
    \ 'GoToDefinitionSplit': ['<C-W>]', '<C-W><C-]>'],
    \ 'FindReferences': 'gr',
    \ 'NextReference': '<C-n>',
    \ 'PreviousReference': '<C-p>',
    \ 'FindImplementations': 'gI',
    \ 'FindCodeActions': 'ga',
    \ 'Rename': 'gR',
    \ 'ShowHover': v:true,
    \ 'DocumentSymbol': 'go',
    \ 'WorkspaceSymbol': 'gS',
    \ 'SignatureHelp': 'gm',
    \ 'Completion': 'completefunc',
    \}

" :::: Omnisharp
let g:OmniSharp_server_path = '/Users/chiefkemist/.cache/omnisharp-vim/omnisharp-roslyn/run'
"let g:OmniSharp_server_use_mono = 1
let g:OmniSharp_server_stdio = 1
let g:OmniSharp_popup_position = 'peek'
let g:OmniSharp_selector_ui = 'fzf'
let g:OmniSharp_selector_findusages = 'fzf'

let g:ale_linters = {
\ 'cs': ['OmniSharp'],
\ 'fs': ['OmniSharp']
\ }


