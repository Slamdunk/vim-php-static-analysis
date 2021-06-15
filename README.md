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

`Plug 'slamdunk/vim-phpstan'`

# Assumptions

This plugin assumes that either `vendor/bin/phpstan` or `phpstan` executable is available in the `$PATH`.

# Authors

| Authors          |                                |
|------------------|--------------------------------|
| Robert Basic     | https://github.com/robertbasic |
