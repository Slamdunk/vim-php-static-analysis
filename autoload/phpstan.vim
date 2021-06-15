function! phpstan#PHPStanAnalyse(...)
    let paths = join(a:000, '\ ')
    let phpstan_path = phpstan#_resolvePhpstanPath()

    let cmd = phpstan_path . ' analyse --errorFormat=raw --no-progress -l' . g:phpstan_analyse_level . ' ' . paths
    let output = system(cmd)

    let list = []
    for line in split(output, "\n")

        " Parse the filename and line number
        let parts = split(line, ':')

        " The reset of the string is the description
        let description = join(parts[2:], ':')

        " Add to the quickfix List
        call add(list, { 'filename': parts[0], 'lnum': parts[1], 'text': description })

    endfor

    call setqflist(list)
    exe 'cwindow'
endfun

function! phpstan#_resolvePhpstanPath()
    for phpstan_path in g:phpstan_paths
        if filereadable(phpstan_path)
            return phpstan_path
        endif
    endfor

    if !executable('phpstan')
        throw "PHPStan doesn't seem to be globally installed or detected locally"
    endif

    return 'phpstan'
endfun
