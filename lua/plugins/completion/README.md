# completion - 自动补全与代码片段插件

本目录包含自动补全引擎和代码片段相关的插件。

## 插件清单

| 文件 | 插件 | 用途 |
|------|------|------|
| `luasnip.lua` | `L3MON4D3/LuaSnip` | Lua 代码片段引擎，支持自定义 C++/Dart 模板 |
| `nvim-cmp.lua` | `hrsh7th/nvim-cmp` | 自动补全引擎，集成 LSP/片段/缓冲区/路径补全 |

> 依赖的补全源：`cmp-nvim-lsp`、`cmp-buffer`、`cmp-path`、`cmp-cmdline`、`cmp_luasnip`、`lspkind.nvim`
