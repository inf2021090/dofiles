call plug#begin()

" Markdown and Latex support
Plug 'plasticboy/vim-markdown'
Plug 'lervag/vimtex'

" Previewing PDF output of Latex files
Plug 'lervag/vimtex', { 'for': 'tex' }
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

" Spell checking for English and Greek
Plug 'vim-scripts/GreekAndEnglish' 

" File explorer
Plug 'preservim/nerdtree'

"icons and colorsheme-gruvebox
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

call plug#end()

" Set up nerdtree
map <C-n> :NERDTreeToggle<CR>

" Spell checking
set spelllang=en,el

" Set up live preview for Latex
let g:livepreview_previewer = 'open -a Skim'
let g:livepreview_preview_continuous = 1
let g:livepreview_instant = 1
let g:livepreview_disable_on_vimleave = 1

" Set up vimtex
let g:vimtex_compiler_latexmk = {
    \ 'executable': 'latexmk',
    \ 'options': [
        \ '-pdf',
        \ '-verbose',
        \ '-file-line-error',
        \ '-synctex=1',
        \ '-interaction=nonstopmode',
        \ '-outdir=%DIR%',
        \ '%DOC%'
    \ ],
    \ }

" Set up markdown
let g:vim_markdown_folding_disabled = 1

" Set up nerdtree
let g:NERDTreeWinPos = "left"
let g:NERDTreeShowHidden = 1
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeIgnore = ['\.aux$', '\.out$', '\.log$']

" gruvbox
syntax enable
set background=dark
colorscheme gruvbox

" airline
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled = 1

let g:airline_powerline_fonts = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_vimfiler = 1
let g:webdevicons_enable_ctrlp = 1
let g:webdevicons_enable_minibufexpl = 1
