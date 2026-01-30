-- this makes yank copy to the system clipboard even over ssh
-- so that my remote dev environment copies over to my local
-- computer's clipboard
vim.g.clipboard = 'osc52'
return {}
