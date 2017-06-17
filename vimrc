" some suggestions:
"   1. Turn off syntax highlighting only for C/C++ files.
"   2. Find a non-distracting color scheme.
"       - basic
"       - coda
"       - codeschool
"       - colorzone
"       - corn
"       - corporation (just remove the bold)
"       - whitedust
"       - hemisu (light)
"   3. Emulate <S-Tab> in insert mode.
"   4. Use abbreviations for decorations (with motions).
"      For example, underscoring, capitalizing,
"      centering. Comment banners and such.
" ✓ 5. Use column matching pattern to highlight text that
"      is greater than &textwidth. make it per window.
" ✓ 6. Change font size with <C-=> (increase) and
"      <C--> (decrease) and with mouse wheel scrolling
"      while CTRL is pressed. see guifont and 
"      setting-guifont documentation.
" ✓ 7. Setup an autocmd that sources the .vimrc file on
"      buffer save.
"   8. Change CAPSLOCK to behave like <Esc> in vim.
"   9. Hebrew support
"  10. Making the `z=' work like C-x s in Insert mode
"  12. Replacing the `:' character to switch for command mode
"  13. Using ViM as an outliner
"  14. Using CTags
"  15. Adding IDE functionality to ViM (Git, TFS, static analysis tools integration
"  16. Using a buffer as a terminal. Supposedly, this doesn't work well.
"  17. Vimscript
"  18. Vimscript support
"  19. File explorer (NERD Tree, I guess)
"  20. Snippets
"  21. Python support
"  22. Easily working with multiple files
"  23. Borrowing features from Acme (Such as?!)
"  24. Good color scheme for programming
"  25. Unobtrusive color scheme/mode
"  26. Fuzzy finder
"  27. Making custom commands work on motions and text objects & new text objects
"  28. Touch typing
"  29. Replacing the <Esc> key
"  30. Comment plug in
"  31. Creating lists and tables
"  32. Creating decorations easily
"  33. Finding a good use for the escape key in normal mode
"  34. Analyzing compiler error messages
"  35. File templates (c, python, markdown)
"  36. Working with projects
"  37. Creating a buffer to mimic working with the console
"  38. Easily change fonts, their size, and family
"  39. Use vim to write e-mails, in both outlook and other program.
"  40. Get encoding value for character under the cursor
"  41. Use file-type plug-in



" Good to Knows
"   1. Press <C-v>u to insert 4 letters hex unicode.
"   2. search pattern for a column '\%<number>v'
"   3. Use <C-t> to tab current line right in insert
"      mode. Use <C-d> to detab the current line when
"      in insert mode.
"   4. ':w' is *disabled*, use '<C-S>' instead.
"   5. ''<.'>s/\%V(/#/g' pattern will operate on the
"      Visual area selected (this implies visual mode).
"   6. 'gv' (in normal mode) : goto the last visual
"      selection. Also, '<' and '>' are markers for
"      start and end of the last visually selected
"      area, respectively.

"read next:
"   1. Autocmd's
" ✓ 2. 'wildmode' - how completion in command
"                   line mode works.
"   3. keycodes
"   4. text-objects
"   5. ex-commands: read, !, move, join, global
"   6. vimscript
" ✓ 7. formatoptions (also :h 'fo-table')
" ✓ 8. cindent       (also :h 'cinoptions-values')
" ✓ 9. autowrite - save the file on every jump 
"                  outside the file. better to
"                  use some auto-backup.
"  10. filetype
"  11. tags
"  12. preview window
"  13. better handling of right-to-left text
"      (Hebrew)
"  14. :command

" Plugins to consider
"   1. minimap (should enable it only when
"      the files lenght exceeds a certain
"      line count)
"   2. snipmate (for C/C++/HTML/XML and more)
"      I should be able to define my own.

" vundle
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" let Vundle manage Vundle, reuquired
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()           " required
filetype plugin indent on   " required

" NERDTree setup
" Open a NERDTree automatically when vim starts up
" autocmd vimenter * NERDTree
" map <C-n> :NERDTreeToggle<CR>
" let g:NERDTreeDirArrowExpandable  = '▸'
" let g:NERDTreeDirArrowCollapsible = '▾'


" basics options
set encoding=utf-8
" if a file has been changed outside ViM, auto-load
set autoread

" mapleader
let mapleader=","
set history=100 viminfo='100,<500,s10,h
set backspace=indent,eol,start
set tabstop=4 shiftwidth=4 expandtab

" set how completion works for consecutive <Tab>
" presses. First find the longest common string,
" then list all options, last, iterate through
" the options
set wildmode=longest,full
set wildmenu
set wildchar=<Tab>

"round indent to multiple of 'shiftwidth'. applies to > and <"
set shiftround
set autoindent smartindent
set ruler showcmd
set incsearch hlsearch
set mouse=a
set mousemodel=popup
" make vertical splits appear to the right and
" horizontal splits show below
set splitright splitbelow
set sessionoptions+=winpos,resize
set nowrap
set smartcase
set ignorecase
" add all folders under the current directory, up to 10
" folders deep
set path+=**

" this checks spelling errors only in comments
" set spell spelllang=en_us

"hide buffers instead of closing"
set hidden

"show matching parenthesis"
set showmatch
"length in 0.1 sec of the match
set matchtime=3

"set printing of none-printable characters
set listchars=tab:>-,trail:_,eol:$,extends:>,precedes:<
if has('multi_byte')
    set listchars=trail:·,eol:¬,tab:▸\ ,extends:»,precedes:«
endif
nnoremap <silent> <leader>l :set list!<CR>



" mappings
"---------

" make Y behave like C, D
nnoremap Y y$

" 6. Emulate <S-Tab> in insert mode
inoremap <silent> <S-Tab> <Esc>:call EmulateShiftTab()<CR>

"change font size
nnoremap <leader>= :call LargerFont()<CR>
nnoremap <leader>- :call SmallerFont()<CR>

"toggle syntax highlighting
nnoremap <leader>s :call ToggleSyntax()<CR>

"saveas, save buffer
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>a
" cnoremap <silent> w<CR> <CR><Esc>

"simple toggling of Hebrew
nnoremap <silent> <C-Space> :call ToggleHebrew()<CR>
inoremap <C-Space> <Esc><c-Space>a


"edit .vimrc file and .gvimrc
nnoremap <leader>ev :split $MYVIMRC<CR>
nnoremap <leader>egv :split $MYGVIMRC<CR>

" clear search highlights
nnoremap <C-l> :noh<CR>

"visual move, can move to a wrapped line"
nnoremap j gj
nnoremap k gk

" change moving around in command mode to be like 
" in the shell
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-f> <Right>
cnoremap <C-b> <Left>
cnoremap <A-f> <C-Right>
cnoremap <A-b> <C-Left>

" switching between buffers
nnoremap <C-Tab> :bn<CR>
nnoremap <C-S-Tab> :bp<CR>


" high light lines longer than textwidth
nnoremap <silent> <leader>ll :call MarkLongLines()<CR>

" escape to normal mode using 'jk' instead
" of <Esc> - This requires defining a variable
" to hold the current escape key. otherwise
" changes are too hard to maintain. omerp

"inoremap jk <Esc>
"inoremap <Esc> <nop>

" spelling corrections
"---------------------
iabbrev teh the
iabbrev hebrew Hebrew
iabbrev english English
iabbrev vim* ViM
iabbrev pushups push ups
iabbrev grammer grammar


" auto commands
"--------------

if !exists("autocommands_loaded")
    let autocommands_loaded = 1
    autocmd BufWritePost $MYVIMRC  :source $MYVIMRC
    autocmd BufWritePost $MYGVIMRC :source $MYGVIMRC
    " autocmd BufRead *.c, *.cpp, *.h :syntax off
endif

" functions
"----------

function! MarkLongLines()
    let w:last_vcol = &textwidth
    let w:pattern = '/.\%' .  string(w:last_vcol+1) . 'v/'
    let w:matcher = 'match ErrorMsg ' . w:pattern
    let w:long_lines = exists('w:long_lines') ? !w:long_lines : 1
    let w:id = 0
    if  w:long_lines
        exec w:matcher
        "let w:id = matchadd('rightMargin', l:pattern)
    else
        match
    endif
endfunction

function! ToggleHebrew()
    if &rl
        set norl
        set keymap=
    else
        set rl
        set keymap=hebrew
    endif
endfunction

function! ToggleSyntax()
    if exists("g:syntax_on")
        syntax off
    else
        syntax enable
    endif
endfunction

let s:minfontsz = 6
let s:maxfontsz = 24
function! AdjustFontSize(amount)
    if has("gui_running")
        " TODO(omerp): old version was finicky, this might
        " work better. It might not, then I have to fix it.
        " let fontparts = split(&guifont, ' ')
        " let cursize = substitute(fontparts[1], '^h', '', '')
        " let newsize = cursize + a:amount
        " let newsetting = substitute(&guifont, cursize, newsize, '')
        let cursize = substitute(&guifont, '^.*\<\(\d\+\)\>', '\1', '')
        let newsize = cursize + a:amount
        if ((newsize >= s:minfontsz) && (newsize <= s:maxfontsz))
            let &guifont = 
            \     substitute(&guifont, cursize, newsize, '')     
" \               join([fontparts[0], newsize],  ' ')
        endif
    else
        echoerr "You need to run GUI version of Vim to use this function."
    endif
endfunction

" Yeah, this doesn't work yet. Returns to the last row and one col off
" instead of the last location of the 
function! EmulateShiftTab()
    let saved_col = screencol()
    let saved_row = screenrow()
    echo 'saved_col = ' .saved_col.' saved_row = '.saved_row
    normal <<
    call cursor(saved_row, saved_col)
endfunction


function! LargerFont()
    call AdjustFontSize(1)
endfunction
command! LargerFont call LargerFont()

function! SmallerFont()
    call AdjustFontSize(-1)
endfunction
command! SmallerFont call SmallerFont()

    " Note this is good when you know path is a file path...
    " Otherwise, the whole splitting to dirname and basename
    " is useless. I think I should file a better name
function! OpenFileUsing(program, path, ... )
    " Find if the file exist
    if !filereadable(a:path)
        echo a:path . " does not exist or is not readable."
        return 0
    endif
    " Make sure the exe is valid
    if executable(a:program) == 0
        echo a:program . " does not exist."
        return 0
    elseif executable(a:program) == -1
        echo "Yikes. " . a:program . " is not implemented."
        return 0
    endif
    " Split into basename and dirname
    let parts = split(a:path, '/')
    let basename = parts[-1]
    let ext = substitute(basename, '^.*\.\(.*\)$', '\=submatch(1)', '')
    " Build the shell command to run a:program
    " First handle the options
    let options = a:0 ? (" " . join(a:000, ' ' ) . " ") : ' '
    execute printf("! %s %s %s &", a:program, options, a:path)
    return 0
endfunction
