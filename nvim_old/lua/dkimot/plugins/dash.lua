return {
  "mrjones2014/dash.nvim",
  event = { "BufReadPre", "BufNewFile" },
  build = "make install",
  opts = {
    file_type_keywords = {
      ruby = { "ruby", "rails", "rubygems" },
    },
  },
}
