return {
	cmd = {
		"clangd",
		"--background-index",
		"--clang-tidy",
		"--function-arg-placeholders",
		"--header-insertion=iwyu",
		"-j=12",
		"--pch-storage=disk",
	}
}
