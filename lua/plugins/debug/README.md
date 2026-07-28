# debug - 调试与格式化插件

本目录包含代码调试和格式化相关的插件。

## 插件清单

| 文件 | 插件 | 用途 |
|------|------|------|
| `dap.lua` | `mfussenegger/nvim-dap` | DAP 调试核心，支持 C/C++/Rust |
| `formatting.lua` | `stevearc/conform.nvim` | 保存时自动格式化多语言代码 |

### DAP 依赖
- `nvim-dap-ui`：调试 UI 界面
- `nvim-dap-virtual-text`：行内显示变量值
- `persistent-breakpoints.nvim`：持久化断点
- `mason-nvim-dap.nvim`：自动安装调试适配器

### 格式化支持语言
Lua、Python、JavaScript、TypeScript、JSX/TSX、JSON、YAML、Markdown、HTML、CSS、Rust、Go、Shell
