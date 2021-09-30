require('telescope').load_extension('fzy_native')

require('telescope').setup{
  pickers = {
    find_files = {
      theme = "dropdown",
    },
    live_grep = {
      theme = "ivy",
      previewer = false,
      options = {
        max_results=-1
      }
    }
  },
  extensions = {
    -- ...
  }
}
