" Plumber. Plugin inspired by the plumber from Rob Pike's Acme
" text editor.
"
"
" Algorithm.
"   Input:
"       s   a string
"   Output:
"       [no output]
"   
"   1. for every pattern in patterns:
"   1.1     if s =~ pattern
"   1.1.1       launch associated vimscript
"
"
" Plan: launch an arbitrary piece of vimscript upon a match.

let s:relative_file = '\(\w\+/\)*\([a-z0-9A-Z._\-]\+\)\?'
let s:absolute_file = '/'.s:relative_file
let s:filepattern = s:relative_file.'|'.s:absolute_file
let s:patterns = { '/\(\w\+/\)*\([a-z0-9A-Z._\-]\+\)\?': 'ProgramLauncher' }

function! ProgramLauncher(s)
    for pattern in keys(s:patterns)
        echo 'Trying to match '.pattern.' against '.a:s
        if a:s =~ pattern
            let Action = function(s:patterns[pattern])
            echo 'Success!! Calling '.s:patterns[pattern]
            call(Action, [s])
        endif
    endfor
endfunction


