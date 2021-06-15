if exists('g:phpstan_plugin_loaded') || &cp
    finish
endif

let g:phpstan_plugin_loaded = 1
let g:phpstan_paths = [ './vendor/bin/phpstan', './bin/phpstan' ]

" A command to call
command! -nargs=+ PHPStanAnalyse call phpstan#PHPStanAnalyse(<f-args>)
