function! phpstan#PHPStanAnalyse(...)
    let paths = join(a:000, '\ ')

    let cmd = 'vendor/bin/phpstan analyse --error-format=raw --no-progress ' . paths
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

" A command to call
command -nargs=* -complete=file PHPStanAnalyse call phpstan#PHPStanAnalyse(<f-args>)
