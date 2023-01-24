require('nvim-web-devicons').setup {
  default = true;
}

require('telescope').setup{
  extensions = {
    dash = {
      file_type_keywords = {
        ruby = { 'ruby', 'rails' }
      }
    }
  }
}

require('nvim-tree').setup {
  update_cwd = true,
  view = {
    adaptive_size = true
  },
  actions = {
    open_file = {
      quit_on_open = true
    }
  }
}

require('sessions').setup()
require('workspaces').setup({
  hooks = {
    open = function()
      require("sessions").load('.session', { silent = true })
    end,
  }
})
