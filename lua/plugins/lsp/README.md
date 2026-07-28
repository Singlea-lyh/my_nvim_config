# lsp - LSP 与代码导航插件

本目录包含语言服务器协议（LSP）相关的插件，提供代码补全、诊断、导航等功能。

## 插件清单

| 文件 | 插件 | 用途 |
|------|------|------|
| `mason.lua` | `williamboman/mason.nvim` | LSP/DAP/格式化工具安装管理器 |
| `lspconfig.lua` | `williamboman/mason-lspconfig.nvim` | Mason 与 nvim-lspconfig 桥接配置 |
| `lspsaga.lua` | `nvimdev/lspsaga.nvim` | LSP UI 增强（诊断、重命名、代码动作） |
| `glance.lua` | `dnlhc/glance.nvim` | 在侧边面板查看定义/引用/类型定义/实现 |
| `inlay-hints.lua` | `MysticalDevil/inlay-hints.nvim` | 行内类型提示（Rust 类型标注等） |
