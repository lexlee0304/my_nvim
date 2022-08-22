return {
	cmd = {
		"clangd",
		"--compile-commands-dir='build'",
		"--background-index",
		"--clang-tidy",
		"--function-arg-placeholders",
		"--header-insertion=iwyu",
		"-j=12",
		"--pch-storage=disk",
	}
}
