vim.g.translator_default_engines={'bing','haici'}
-- Display translation in a window
vim.api.nvim_set_keymap("n", "<S-t>", ":TranslateW<CR>", {noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<S-t>", ":TranslateWV<CR>", {noremap = true, silent = true })