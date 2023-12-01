local opt = vim.opt




opt.mouse = 'a'              
opt.encoding = 'utf-8'       
opt.showcmd = true           
vim.cmd([[
filetype indent plugin on
syntax enable
]])
opt.swapfile = false         




opt.number = true            
opt.wrap = true              
opt.expandtab = true         
opt.tabstop = 4              
opt.smartindent = true
opt.shiftwidth = 4           


vim.cmd [[
autocmd FileType xml,html,xhtml,css,scss,javascript,lua,yaml,htmljinja setlocal shiftwidth=2 tabstop=2
]]

opt.so = 5                   
opt.foldcolumn = '2'         
opt.colorcolumn =  '119'     


vim.cmd [[autocmd FileType text,markdown,html,xhtml,javascript setlocal cc=0]]

opt.cursorline = true        
opt.termguicolors = true


vim.g.tagbar_compact = 1
vim.g.tagbar_sort = 0





opt.ignorecase = true        
opt.smartcase = true         





vim.api.nvim_exec([[
augroup YankHighlight
autocmd!
autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=300}
augroup end
]], false)





