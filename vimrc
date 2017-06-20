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

" set history, when opening vim, restore from the viminfo
" file marks for up to 100 files, the buffer list,
" registers smaller than 10Kbyte, store marks [0-9A-Z],
" and 20 last search patterns.
set history=1000 viminfo='100,s10,h,f1,/20
set backspace=indent,eol,start
set tabstop=4 shiftwidth=4 expandtab

" reload a file as soon as it changes on disk
set autoread

" set how completion works for consecutive <Tab>
" presses. First find the longest common string,
" then list all options, last, iterate through
" the options
set wildmode=longest,full
set wildmenu
set wildchar=<Tab>
set wildignore=*.swp

"round indent to multiple of 'shiftwidth'. applies to > and <"
set shiftround
set autoindent smartindent
set ruler showcmd

" search options: incremental search, highlight search results, use smart case
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


filetype plugin indent on

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
nnoremap <silent> <C-l> :noh<CR>:redraw!<CR>

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
nnoremap <silent> <C-Tab> :bn<CR>
nnoremap <silent> <C-S-Tab> :bp<CR>


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
    autocmd VimResized * wincmd =
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


" Note(omerp): Stolen from Damian Conway's code for vim tricks for Perl
"======[ Magically build interim directories if necessary ]===================

function! AskQuit (msg, options, quit_option)
    if confirm(a:msg, a:options) == a:quit_option
        exit
    endif
endfunction

function! EnsureDirExists ()
    let required_dir = expand("%:h")
    if !isdirectory(required_dir)
        call AskQuit("Parent directory '" . required_dir . "' doesn't exist.",
             \       "&Create it\nor &Quit?", 2)

        try
            call mkdir( required_dir, 'p' )
        catch
            call AskQuit("Can't create '" . required_dir . "'",
            \            "&Quit\nor &Continue anyway?", 1)
        endtry
    endif
endfunction

augroup AutoMkdir
    autocmd!
    autocmd  BufNewFile  *  :call EnsureDirExists()
augroup END


"=====[ Launch Application for File Under Cursor ]=============================

" gvimrc
let s:rules = []

noremap <leader>x :call LaunchProgram(expand("<cWORD>"))<CR>

" /home/omerp/projects/vim/vim.md
" ../omerp/Documents/readings/lint.pdf

function! LaunchProgram(uri)
    echo "uri: " . a:uri
    "If it is a file, figure out which kind and call associated program
    " First, look in the directory of the file.
    let path = findfile(a:uri, ".")
    echo "path: " . path
    let ext = substitute(a:uri, '^.*\.\(.*\)$', '\=submatch(1)', '')
    echo "ext: " . ext
    "if ext == 'pdf'
        "execute printf("! %s %s %s &", 'evince', '', path)
    "endif
endfunction

"=====[ Return the Directory Path "]===========================================

if has("win32")
    let s:pathsep = '\'
else
    let s:pathsep = '/'
endif

function! GetFileDirecotry(filepath)
    return substitute(a:filepath, s:pathsep.'[^'.s:pathsep.']*$', '', '')
endfunction

"=====[ Toggle Comments "]=======================================================

augroup Toggle_Comment
    autocmd!
    autocmd FileType        *sh,awk,perl,python    let b:cmt = exists("b:cmt") ? b:cmt : '#'
    autocmd FileType        markdown               let b:cmt = exists("b:cmt") ? b:cmt : '#'
    autocmd FileType        vim                    let b:cmt = exists("b:cmt") ? b:cmt : '"'
    autocmd FileType        c,cpp                  let b:cmt = exists("b:cmt") ? b:cmt : '//'
    autocmd FileType        ceva                   let b:cmt = exists("b:cmt") ? b:cmt : ';'
    autocmd BufNewFile      *                      let b:cmt = exists("b:cmt") ? b:cmt : '#'
    autocmd BufReadPre      vimrc,gvimrc           let b:cmt = exists("b:cmt") ? b:cmt : '"'
augroup END


function! ToggleComment(line)
    let comment_str = exists("b:cmt") ? b:cmt : '#'
    " setline('.', substitute(getline('.'), '^', b:cmt . ' ', ''))
    if a:line =~ '^\s*'.comment_str
        return substitute(a:line, comment_str.' ', '', '')
    else
        return substitute(a:line, '^\(\s*\)\(\S\)',
                    \   '\=submatch(1).comment_str." ".submatch(2)', '')
    endif
endfunction

" Given a range of lines to be commented or un-commented create
" a column of b:cmt strings followed by a space before each line.
" Subsquent uncommenting of each line, by removing the b:cmt string
" and the following space must restore the line's original position.
" If the selection contains several commented out, the column number should
" not take their leftmost character (which is b:cmt) into account. Instead,
" a search for the left-most line should start a fresh.
" Psuedocode:
" colum = MAX -- the left most column
" line  = a:firstline
" while line <= a:lastline:
"   Toggle commented lines in range   
"   find leftmost line until end of range or commented line
"   comment lines with b:cmt starting at left most column
function! ToggleCommentBlock() range
    let currline_nr = a:firstline
    while currline_nr <= a:lastline
        let currline = getline(currline_nr)
        while currline_nr <= a:lastline && currline =~ '^\s*'.b:cmt
            call setline(currline_nr, ToggleComment(currline))
            let currline_nr += 1
            let currline = getline(currline_nr)
        endwhile
        " currline has no comment / currline_nr > a:lastline
        if currline_nr > a:lastline
            break
        endif
        " currline has no comment, comment it...
        " first find the left-most line
        " Note:(omerp): Use a large number because I don't know
        " the maximum for an integer in vimscript.
        let col = 1000
        let comment_block_start = currline_nr
        while currline_nr <= a:lastline && currline !~ '^\s*'.b:cmt
            let comment_col = match(currline, '\S')
            " in case match failed to find the pattern, comment_col
            " is -1. we want to skip such lines, so we check a match
            " indeed succeeded.
            if comment_col >= 0 && comment_col < col
                let col = comment_col
            endif
            let currline_nr += 1
            let currline = getline(currline_nr)
        endwhile
        
        " Comment the lines in range comment_block_start to currline_nr - 1
        " (inclusive) by inserting a b:cmt . ' ' at column `col'.
        " Note: No need to worry currline_nr <= a:lastline because we checked
        "       at previous while loop.
        for n in range(comment_block_start, currline_nr - 1)
            " Some calculation is in order here to get the column correct.
            " This is because virtual column match (that you get with
            " '\%'.(col+1).'v' is _not_ going to match against tabs...
            " the \%nnnc option sees the line '<Tab><Space><Tab>' as
            " \t \t and it is not clear how virtual column looks at it.
            "
            " Note: I think it is better to expand the tabs in the line. Then
            "       carry on as ussual. Later this can be take into account
            "       the value of &expandtab. And if it is on, just count tabs
            "       instead of spaces.
            let s:spaces = { 2: '  ', 4: '    ', 8: '    ' }
            let blanks = s:spaces[&tabstop]
            let line = substitute(getline(n), '\t', blanks, 'g')
            call setline(n, substitute(line, '\%'.(col+1).'v', b:cmt.' ', ''))
        endfor
    endwhile
endfunction

nnoremap <silent> <leader>c :call setline('.', ToggleComment(getline('.')))<CR>
" vnoremap <silent> <leader>c :call setline('.', ToggleComment(getline('.')))<CR>j0
vnoremap <silent> <leader>c :call ToggleCommentBlock()<CR>j0

