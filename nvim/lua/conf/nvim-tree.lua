require'nvim-tree'.setup {
	sort = {
		sorter = "case_sensitive",
	},
	view = {
		width = 27,
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
	-- 不显示 git 状态图标
	git = {
		enable = false
	}
}
