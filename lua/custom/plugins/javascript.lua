-- Add this inside your LSP setup code

local lspconfig = require 'lspconfig'

-- for some reason I can't make vtsls active without the following line
lspconfig.vtsls.setup {}
return {}
