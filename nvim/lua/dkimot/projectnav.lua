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

require('dash').setup({
  file_type_keywords = {
    -- a table of strings will search on multiple keywords
    ruby = { 'ruby', 'rails', 'rubygems' },
    javascript = { 'javascript', 'nodejs' },
    typescript = { 'typescript', 'javascript', 'nodejs' },
    typescriptreact = { 'typescript', 'javascript', 'react' },
    javascriptreact = { 'javascript', 'react' },
  }
})
