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
  view = {
    adaptive_size = true
  },
  filters = {
    dot_files = true
  },
  actions = {
    open_file = {
      quit_on_open = true
    }
  }
}
