function! phpstan#PHPStanAnalyse(...)
    let paths = join(a:000, '\ ')

    let phpstan_path = phpstan#_resolvePhpstanPath()

    let cmd = phpstan_path . ' analyse --errorFormat=raw --no-progress -l' . g:phpstan_analyse_level . ' ' . paths
    let result = system(cmd)

    let list = []
    for line in split(result, "\n")
        let parts = split(line, ':')
        call add(list, { 'filename': parts[0], 'lnum': parts[1], 'text': parts[2] })
    endfor

    call setqflist(list)
    execute ':cwindow'
endfun

function! phpstan#_resolvePhpstanPath()
    echo g:phpstan_paths
    for phpstan_path in g:phpstan_paths
        if filereadable(phpstan_path)
            return phpstan_path
        endif
    endfor

    if !executable('phpstan')
        throw 'PHPStan doesn't seem to be globally installed or detected locally'
    endif

    return 'phpstan'
endfun
