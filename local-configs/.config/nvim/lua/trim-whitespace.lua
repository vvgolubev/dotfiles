vim.cmd([[
autocmd Filetype cpp,python,yaml,css,js,jsx,yql,go,lua,proto autocmd BufWritePre <buffer> %s/\s\+$//e
]])
