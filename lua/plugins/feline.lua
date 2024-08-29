-- lua/plugins/feline.lua
return {
    'freddiehaddad/feline.nvim',
    opts = {},
    config = function(_, opts)
        require('feline').setup()
        require('feline').winbar.setup()       -- to use winbar
        require('feline').statuscolumn.setup() -- to use statuscolumn

        require('feline').use_theme('default')          -- to use a custom theme
    end
}
