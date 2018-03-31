# vim-phpstan

A Vim plugin for [PHPStan](https://github.com/phpstan/phpstan). It calls `phpstan` to do static analysis of your PHP code and displays the errors in Vim's quickfix list.

See `:help quickfix` for more on how to use the quickfix.

# Usage

Call the `PHPStanAnalyse` command and pass the directories you want analysed as arguments:

``` vim
:PHPStanAnalyse src test
```

And the quickfix list will be populated with something like this:

![vim phpstan quickfix screenshot](https://github.com/phpstan/vim-phpstan/blob/master/vim-phpstan-qf.png)

# Installation

Using [vim-plug](https://github.com/junegunn/vim-plug):

`Plug 'phpstan/vim-phpstan'`

# Configuration

You can configure the level PHPStan uses. By default the level is 2.

```
let g:phpstan_analyse_level = 4
```

By default the plugin will look for PHPStan in `./vendor/bin/phpstan`, then
`./bin/phpstan` and fallback to the global `phpstan` global executable if it exists.

You can override the path with

```
let g:phpstan_path = '/path//to/phpstan'
```

# Assumptions

This plugin assumes that the `phpstan` executable is available in the `$PATH`.

# Authors

| Authors          |                                |
|------------------|--------------------------------|
| Robert Basic     | https://github.com/robertbasic |
