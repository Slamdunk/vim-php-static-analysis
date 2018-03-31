function! phpstan#PHPStanAnalyse(...)
    let paths = join(a:000, '\ ')
    let cmd = './vendor/bin/phpstan analyse --errorFormat=raw --no-progress -l' . g:phpstan_analyse_level . ' ' . paths
    let result = system(cmd)

    let list = []
    for line in split(result, "\n")
        let parts = split(line, ':')
        call add(list, { 'filename': parts[0], 'lnum': parts[1], 'text': parts[2] })
    endfor

    call setqflist(list)
    execute ':cwindow'
endfun
