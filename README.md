# vim-php-static-analysis

A Vim plugin for [PHPStan](https://github.com/phpstan/phpstan) and [Psalm](https://github.com/vimeo/psalm).
It calls `phpstan` or `psalm` to do static analysis of your PHP code and displays the errors in Vim's quickfix list.

See `:help quickfix` for more on how to use the quickfix.

# Usage

Call the `PHPStanAnalyse` or `Psalm` command and pass the directories you want analysed as arguments:

``` vim
:PHPStanAnalyse src test
```

And the quickfix list will be populated with something like this:

![vim phpstan quickfix screenshot](https://github.com/phpstan/vim-phpstan/blob/master/vim-phpstan-qf.png)

# Installation

Using [vim-plug](https://github.com/junegunn/vim-plug):

`Plug 'slamdunk/vim-php-static-analysis`

# Assumptions

This plugin assumes that `vendor/bin/phpstan` or `vendor/bin/psalm` executable is available in the `$PATH`.

# Authors

| Authors          |                                |
|------------------|--------------------------------|
| Robert Basic     | https://github.com/robertbasic |
