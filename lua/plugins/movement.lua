local keymap = vim.keymap.set

-- NVIM TMUX NAVIGATOR
local nvim_tmux_nav = require("nvim-tmux-navigation")
require("nvim-tmux-navigation").setup({
  disable_when_zoomed = false, -- defaults to false
})

keymap("n", "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
keymap("n", "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
keymap("n", "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
keymap("n", "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
keymap("n", "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
keymap("n", "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)


-- ARROW
require("arrow").setup({
  show_icons = true,
  leader_key = "\\", -- Recommended to be a single key
  buffer_leader_key = "m", -- Per Buffer Mappings
})

keymap("n", "H", require("arrow.persist").previous)
keymap("n", "L", require("arrow.persist").next)
keymap("n", "<C-s>", require("arrow.persist").toggle)


-- GX
require("gx").setup({
  open_browser_app = "xdg-open",
  -- open_browser_args = { "" },

  handlers = {
	plugin = true, -- open plugin links in lua (e.g. packer, lazy, ..)
	github = true, -- open github issues
	package_json = true, -- open dependencies from package.json
	search = true, -- search the web/selection on the web if nothing else is found
	go = true, -- open pkg.go.dev from an import statement (uses treesitter)
  },

  handler_options = {
	search_engine = "https://duckduckgo.com/?q=", -- or you can pass in a custom search engine
	select_for_search = false, -- if your cursor is e.g. on a link, the pattern for the link AND for the word will always match. This disables this behaviour for default so that the link is opened without the select option for the word AND link
	git_remotes = { "upstream", "origin" }, -- list of git remotes to search for git issue linking, in priority
	git_remote_push = false, -- use the push url for git issue linking,
  },
})

