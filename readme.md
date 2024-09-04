# Neovim Configuration Cheatsheet

This cheatsheet provides an overview of the key mappings configured in your Neovim setup. It includes general key mappings as well as specific mappings for Language Server Protocol (LSP) functionalities.

## General Key Mappings

| Key Binding     | Mode   | Function Description                           |
|-----------------|--------|-----------------------------------------------|
| `<leader>w`     | Normal | Save the current buffer (`:w`)                |
| `<leader>q`     | Normal | Quit the current window (`:q`)                |
| `<leader>x`     | Normal | Save and quit (`:wq`)                         |
| `<leader>h`     | Normal | Move to the left split                        |
| `<leader>j`     | Normal | Move to the below split                       |
| `<leader>k`     | Normal | Move to the above split                       |
| `<leader>l`     | Normal | Move to the right split                       |
| `<leader>n`     | Normal | Toggle NERDTree file explorer                 |
| `<leader>ff`    | Normal | Find files using Telescope                    |
| `<leader>fg`    | Normal | Live grep using Telescope                     |
| `<leader>fb`    | Normal | List buffers using Telescope                  |
| `<leader>fh`    | Normal | Help tags using Telescope                     |
| `Y`             | Normal | Yank from cursor to end of line (`y$`)        |
| `<leader>p`     | Normal | Paste from the system clipboard               |
| `Ctrl+u`        | Normal | Scroll up half a page                         |
| `Ctrl+d`        | Normal | Scroll down half a page                       |

## LSP Key Mappings

These key mappings are for Language Server Protocol (LSP) features enabled through the `nvim-lspconfig` plugin.

### General LSP Mappings

| Key Binding      | Mode   | Function Description                                      |
|------------------|--------|-----------------------------------------------------------|
| `gD`             | Normal | Go to declaration of symbol under the cursor               |
| `gd`             | Normal | Go to definition of symbol under the cursor                |
| `K`              | Normal | Show hover information about the symbol under the cursor   |
| `gi`             | Normal | Go to implementation of the symbol under the cursor        |
| `<C-k>`          | Normal | Show signature help (parameter info)                       |
| `<space>wa`      | Normal | Add a workspace folder                                     |
| `<space>wr`      | Normal | Remove a workspace folder                                  |
| `<space>wl`      | Normal | List all workspace folders                                 |
| `<space>D`       | Normal | Go to type definition of the symbol under the cursor       |
| `<space>rn`      | Normal | Rename the symbol under the cursor                         |
| `gr`             | Normal | Find references to the symbol under the cursor             |
| `<space>e`       | Normal | Show line diagnostics                                      |
| `[d`             | Normal | Go to the previous diagnostic                              |
| `]d`             | Normal | Go to the next diagnostic                                  |
| `<space>q`       | Normal | Add diagnostics to the location list                       |
| `<space>f`       | Normal | Format the current buffer                                  |

