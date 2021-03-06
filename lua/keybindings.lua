-- leader key 为空格
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 本地变量

-- ctrl u / ctrl + d  只移动9行，默认移动半屏
vim.api.nvim_set_keymap("n", "<C-u>", "9k", {noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-d>", "9j", {noremap = true, silent = true })

-- visual模式下缩进代码
vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = true, silent = true })


------------------------------------------------------------------
-- windows 分屏快捷键
vim.api.nvim_set_keymap("n", "sv", ":vsp<CR>", {noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "sh", ":sp<CR>", {noremap = true, silent = true })

-- 关闭当前
vim.api.nvim_set_keymap("n", "sc", "<C-w>c", {noremap = true, silent = true })
-- 关闭其他
vim.api.nvim_set_keymap("n", "so", "<C-w>o", {noremap = true, silent = true }) -- close others

-- 比例控制
vim.api.nvim_set_keymap("n", "s>", ":vertical resize +20<CR>", {noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "s<", ":vertical resize -20<CR>", {noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "s=", "<C-w>=", {noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "sj", ":resize +10<CR>",{noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "sk", ":resize -10<CR>",{noremap = true, silent = true })

-- alt + hjkl  窗口之间跳转
vim.api.nvim_set_keymap("n", "<A-h>", "<C-w>h", {noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-j>", "<C-w>j", {noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-k>", "<C-w>k", {noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-l>", "<C-w>l", {noremap = true, silent = true })

--------------------------------------------------------------------
--插件快捷键


pluginKeys = {}

-- 代码注释插件
-- see ./lua/plugin-config/comment.lua
pluginKeys.comment = {
  -- normal 模式
  toggler = {
    line = '<leader>c',
    block = '<leader>bc',
  },
  -- visual 模式
  opleader = {
    -- ctrl + / 
    line = '<C-_>',
    block = 'bc',
  },
}

-- lsp 快捷键设置
-- ./lua/lsp/language_servers.lua
pluginKeys.lsp_on_attach = function(client, buffer)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end 
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
    --- Mappings.
    vim.api.nvim_buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', {noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', {noremap = true, silent = true })
    -- vim.api.nvim_buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', {noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', {noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<CR>', {noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap('n', 'ge' , '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', {noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap('n', 'gpe', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', {noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap('n', 'gf', '<cmd>lua vim.lsp.buf.formatting()<CR>', {noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap('n', 'gca', '<cmd>lua vim.lsp.buf.code_action()<CR>', {noremap = true, silent = true })
end

return pluginKeys
