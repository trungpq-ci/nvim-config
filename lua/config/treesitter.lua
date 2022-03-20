require("nvim-treesitter.configs").setup({
  ensure_installed = {"python", "lua", "vim", "bash"},
  ignore_install = {}, -- List of parsers to ignore installing
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = {}, -- list of language that will be disabled
    additional_vim_regex_highlighting = false
  },
})
