return {
  "nvim-tree/nvim-tree.lua",
  version = "*",  -- Use the latest stable version
  lazy = false,   -- Load nvim-tree immediately
  dependencies = {
    "nvim-tree/nvim-web-devicons",  -- Optional, for file icons
  },
  config = function()
    local api = require("nvim-tree.api")

    -- Custom function to edit or open
    local function edit_or_open()
      local node = api.tree.get_node_under_cursor()

      if node.nodes ~= nil then
        -- expand or collapse folder
        api.node.open.edit()
      else
        -- open file
        api.node.open.edit()
        -- Close the tree if file was opened
        api.tree.close()
      end
    end

    -- Custom function to open as vsplit
    local function vsplit_preview()
      local node = api.tree.get_node_under_cursor()

      if node.nodes ~= nil then
        -- expand or collapse folder
        api.node.open.edit()
      else
        -- open file as vsplit
        api.node.open.vertical()
      end

      -- Finally refocus on tree if it was lost
      api.tree.focus()
    end

    -- Global keymap for toggling nvim-tree
    vim.api.nvim_set_keymap("n", "<C-h>", ":NvimTreeToggle<CR>", {silent = true, noremap = true})

    -- Key mappings specific to nvim-tree
    local function on_attach(bufnr)
      local opts = function(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
      end

      -- Key mappings within nvim-tree
      vim.keymap.set("n", "l", edit_or_open, opts("Edit Or Open"))
      vim.keymap.set("n", "L", vsplit_preview, opts("Vsplit Preview"))
      vim.keymap.set("n", "h", api.tree.close, opts("Close"))
      vim.keymap.set("n", "H", api.tree.collapse_all, opts("Collapse All"))
    end

    -- Setup nvim-tree with custom on_attach function
    require("nvim-tree").setup({
      on_attach = on_attach,
      -- Other nvim-tree settings can go here
    })
  end
}
