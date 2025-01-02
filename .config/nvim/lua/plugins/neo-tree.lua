-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '<Tab>', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['<Tab>'] = 'close_window',
        },
      },
      filtered_items = {
        hide_dotfiles = false, -- Versteckte Dateien (Dateien, die mit . anfangen) anzeigen
        hide_gitignored = false, -- Git-ignorierte Dateien anzeigen
      },
    },
  },
}