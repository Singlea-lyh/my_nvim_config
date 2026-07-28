# Neovim 配置说明文档

> 基于 LazyVim 的 Neovim 配置，适用于 Ubuntu/Linux 环境。

---

## 1. 配置概述

本配置采用 **lazy.nvim** 作为插件管理器，采用模块化设计，配置文件位于 `lua/` 目录下：

| 文件 | 作用 |
|------|------|
| `init.lua` | 主入口，加载 options、keymaps、lazy |
| `lua/config/options.lua` | 编辑器基础选项（行号、缩进、搜索等） |
| `lua/config/keymaps.lua` | 全局快捷键映射 |
| `lua/config/lazy.lua` | lazy.nvim 插件管理器初始化 |
| `lua/plugins/` | 插件配置目录，按功能分为多个子文件夹 |
| `lua/plugins/ui/` | 界面与主题相关插件 |
| `lua/plugins/editor/` | 编辑器增强相关插件 |
| `lua/plugins/search/` | 搜索相关插件 |
| `lua/plugins/lsp/` | LSP 与代码导航相关插件 |
| `lua/plugins/completion/` | 自动补全与代码片段相关插件 |
| `lua/plugins/git/` | Git 集成相关插件 |
| `lua/plugins/lang/` | 语言专项支持插件 |
| `lua/plugins/debug/` | 调试与格式化相关插件 |
| `lua/plugins/ai/` | AI 辅助相关插件 |
| `lua/plugins/tools/` | 工具与辅助插件 |

### Leader 键
- **全局 Leader**: `<Space>`（空格键）
- **本地 Leader**: `<Space>`

---

## 2. 基础选项配置（options.lua）

| 选项 | 设置值 | 说明 |
|------|--------|------|
| `termguicolors` | `true` | 启用 24 位真彩色 |
| `number` | `true` | 显示绝对行号 |
| `relativenumber` | `true` | 显示相对行号（当前行为绝对行号） |
| `tabstop` | `4` | Tab 显示宽度为 4 个空格 |
| `shiftwidth` | `4` | 自动缩进宽度为 4 个空格 |
| `expandtab` | `true` | 按 Tab 插入空格而非 `\t` |
| `autoindent` / `smartindent` | `true` | 智能自动缩进 |
| `ignorecase` / `smartcase` | `true` | 搜索忽略大小写，但包含大写字母时精确匹配 |
| `hlsearch` / `incsearch` | `true` | 高亮搜索并实时预览 |
| `wrap` | `false` | 关闭自动换行 |
| `scrolloff` / `sidescrolloff` | `8` | 光标距屏幕边缘保持 8 行/列 |
| `splitright` / `splitbelow` | `true` | 垂直分割窗口在右，水平分割在下 |
| `clipboard` | `unnamedplus` | 与系统剪贴板同步 |
| `mouse` | `a` | 启用鼠标支持 |
| `swapfile` | `false` | 关闭交换文件 |
| `backup` | `false` | 关闭备份文件 |
| `undofile` | `true` | 持久化撤销记录 |
| `updatetime` | `250` | 光标停留 250ms 触发 CursorHold |
| `timeoutlen` | `300` | 快捷键等待超时 300ms |
| `colorcolumn` | `"100"` | 在 100 列显示参考线 |
| `cursorline` | `true` | 高亮当前行 |
| `signcolumn` | `"yes"` | 始终显示符号列 |
| `pumheight` | `10` | 补全菜单最多显示 10 项 |

### SSH 远程剪贴板
- 检测到 SSH 连接时，自动使用 **OSC 52** 协议与本地系统剪贴板交互。

---

## 3. 插件清单及作用

### 3.1 插件管理器

| 插件 | 作用 |
|------|------|
| `lazy.nvim` | 现代 Neovim 插件管理器，支持懒加载、自动安装 |

### 3.2 界面与主题

| 插件 | 作用 |
|------|------|
| `catppuccin/nvim` | 主颜色主题（mocha 深色风格） |
| `lualine.nvim` | 底部状态栏，显示模式、分支、诊断、文件名、进度等 |
| `bufferline.nvim` | 顶部 Buffer 标签栏，支持诊断图标、关闭按钮 |
| `nvim-notify` | 通知消息美化，替代默认 `vim.notify` |
| `dashboard-nvim` | 启动欢迎界面（Doom 主题风格） |
| `noice.nvim` | 命令行、搜索、消息弹窗美化 |
| `dressing.nvim` | 改善 `vim.ui.select` 和 `vim.ui.input` 界面 |
| `nvim-web-devicons` / `mini.icons` | 文件类型图标支持 |
| `themify.nvim` | 主题管理器，支持多主题切换和实时预览 |
| `neominimap.nvim` | 代码迷你地图（Minimap） |

### 3.3 文件与终端管理

| 插件 | 作用 |
|------|------|
| `nvim-tree.lua` | 侧边文件树浏览器，支持 Git 状态显示 |
| `yazi.nvim` | 集成 Yazi 终端文件管理器 |
| `toggleterm.nvim` | 浮动/底部终端集成 |

### 3.4 编辑器增强

| 插件 | 作用 |
|------|------|
| `nvim-autopairs` | 自动括号/引号配对，`Ctrl+G e` 快速跳出括号 |
| `Comment.nvim` | 快速注释/取消注释代码块 |
| `vim-illuminate` | 高亮光标下相同单词 |
| `nvim-surround` | 快速添加/修改/删除环绕字符（如括号、引号） |
| `flash.nvim` | 快速跳转插件，按 `s` 触发 |
| `mini.move` | 使用 `Alt+h/j/k/l` 移动选中文本或整行 |
| `nvim-ts-autotag` | HTML/JSX 标签自动闭合和重命名 |
| `indent-blankline.nvim` | 彩虹缩进参考线 |
| `rainbow-delimiters.nvim` | 彩虹括号匹配高亮 |

### 3.5 搜索

| 插件 | 作用 |
|------|------|
| `telescope.nvim` | 模糊搜索框架，支持文件、内容、符号、帮助等搜索 |
| `telescope-fzf-native.nvim` | fzf 原生算法扩展，提升搜索性能 |

### 3.6 自动补全与代码片段

| 插件 | 作用 |
|------|------|
| `nvim-cmp` | 自动补全引擎框架 |
| `LuaSnip` | Lua 代码片段引擎，支持自定义 C++/Dart 模板 |
| `friendly-snippets` | 社区预置代码片段集合 |
| `cmp-nvim-lsp` | LSP 补全源 |
| `cmp-buffer` | 当前文件词汇补全源 |
| `cmp-path` | 文件路径补全源 |
| `cmp-cmdline` | 命令行补全源 |
| `lspkind.nvim` | 补全菜单图标美化 |
| `copilot.lua` | GitHub Copilot AI 补全 |
| `CopilotChat.nvim` | GitHub Copilot 聊天交互 |
| `neocodeium` | AI 补全（当前禁用） |
| `llama.vim` | llama.cpp 本地模型行内补全（当前禁用） |

### 3.7 LSP 与代码导航

| 插件 | 作用 |
|------|------|
| `mason.nvim` | LSP/DAP/格式化工具安装管理器 |
| `mason-lspconfig.nvim` | Mason 与 nvim-lspconfig 桥接 |
| `nvim-lspconfig` | LSP 服务器配置核心 |
| `lspsaga.nvim` | LSP UI 增强（诊断、重命名、代码动作等） |
| `glance.nvim` | 在侧边面板中查看定义、引用、类型定义、实现 |
| `inlay-hints.nvim` | 行内类型提示（如 Rust 类型标注） |

### 3.8 Git 集成

| 插件 | 作用 |
|------|------|
| `gitsigns.nvim` | 行内 Git 状态显示（增删改标记） |
| `lazygit.nvim` | 在 Neovim 内嵌 LazyGit TUI |

### 3.9 语言专项支持

| 插件 | 作用 | 适用语言 |
|------|------|----------|
| `rustaceanvim` | Rust LSP 深度集成（替代 rust-analyzer） | Rust |
| `crates.nvim` | Cargo.toml 依赖版本管理 | Rust |
| `flutter-tools.nvim` | Flutter/Dart LSP 和工具集成 | Flutter |
| `neogen` | 自动生成函数/类/文件文档注释 | 多语言 |

### 3.10 代码格式化

| 插件 | 作用 |
|------|------|
| `conform.nvim` | 保存时自动格式化，支持多语言 |

支持语言及格式化工具：
- **Lua**: `stylua`
- **Python**: `black`, `isort`
- **JS/TS/JSX/TSX/HTML/CSS/JSON/YAML/Markdown**: `prettier`
- **Rust**: `rustfmt`
- **Go**: `gofmt`, `goimports`
- **Shell**: `shfmt`

### 3.11 调试（DAP）

| 插件 | 作用 |
|------|------|
| `nvim-dap` | Debug Adapter Protocol 核心 |
| `nvim-dap-ui` | 调试 UI 界面（变量、调用栈、断点等） |
| `nvim-dap-virtual-text` | 行内显示变量值 |
| `persistent-breakpoints.nvim` | 持久化断点（跨会话保留） |
| `mason-nvim-dap.nvim` | Mason 自动安装调试适配器 |

### 3.12 代码折叠与视图

| 插件 | 作用 |
|------|------|
| `nvim-ufo` | 基于 Treesitter 的智能代码折叠 |

### 3.13 多光标编辑

| 插件 | 作用 |
|------|------|
| `vim-visual-multi` | 多光标/多选区编辑，类似 VSCode 的 Ctrl+D |

### 3.14 辅助工具

| 插件 | 作用 |
|------|------|
| `which-key.nvim` | 快捷键提示面板，输入 Leader 键后显示可用快捷键 |
| `ccc.nvim` | 颜色拾取器和高亮，`<leader>p` 打开调色盘 |
| `render-markdown.nvim` | Markdown 文件渲染美化 |

---

## 4. 快捷键总览

### 4.1 全局基础快捷键

| 模式 | 快捷键 | 作用 |
|------|--------|------|
| N | `<Space>` | Leader 键前缀 |
| N | `J` | 跳转到行首（`^`） |
| N | `K` | 跳转到行尾（`$`） |
| N | `;` | 映射为 `:`（进入命令行） |
| N | `<A-Left>` | 后退（`<C-O>`） |
| N | `<A-Right>` | 前进（`<C-I>`） |
| N | `<C-c>` | 向下翻页并居中 (`<C-d>zz`) |
| N | `<C-u>` | 向上翻页并居中 (`<C-u>zz`) |
| N | `<Esc>` | 清除搜索高亮 |
| N/V | `gg` | 跳转到文件第一行 |
| N/V | `gG` | 跳转到文件最后一行 |
| I | `jj` | 退出插入模式 |
| **全部** | `<C-;>` | 映射为 `<Esc>`（所有模式） |

### 4.2 窗口管理

| 模式 | 快捷键 | 作用 |
|------|--------|------|
| N | `<C-Left>` / `<C-Down>` / `<C-Up>` / `<C-Right>` | 跳转到左/下/上/右窗口 |
| N | `<leader>Wv` | 垂直分割窗口 |
| N | `<leader>Wh` | 水平分割窗口 |
| N | `<leader>Wc` | 关闭当前窗口 |
| N | `<leader>Wo` | 关闭其他窗口 |
| N | `<leader>Wr` | 旋转窗口 |
| N | `<leader>Wm` | 最大化窗口 |
| N | `<leader>W=` | 平衡窗口大小 |
| N | `<C-k>` / `<C-j>` | 增加/减少窗口高度 |
| N | `<C-l>` / `<C-h>` | 增加/减少窗口宽度 |

### 4.3 Buffer（标签页）管理

| 模式 | 快捷键 | 作用 |
|------|--------|------|
| N | `<S-h>` | 切换到上一个 Buffer |
| N | `<S-l>` | 切换到下一个 Buffer |
| N | `<leader>bc` | 智能关闭当前 Buffer（未保存则先保存） |
| N | `<leader>bo` | 关闭其他 Buffer |
| N | `<leader>bl` | 关闭左侧 Buffer |
| N | `<leader>br` | 关闭右侧 Buffer |
| N | `<leader>bh` | 向左移动当前 Buffer |
| N | `<leader>bm` | 向右移动当前 Buffer |

### 4.4 文件与终端

| 模式 | 快捷键 | 作用 |
|------|--------|------|
| N | `<leader>e` | 切换文件树（NvimTree） |
| N | `<leader>o` | 打开文件（基于当前目录） |
| N | `<leader>-` | 打开 Yazi 文件管理器 |
| N | `<C-\>` | 切换浮动终端（ToggleTerm） |
| N | `<leader>t` | 打开终端 |
| T | `<Esc>` | 退出终端模式 |

### 4.5 文本操作

| 模式 | 快捷键 | 作用 |
|------|--------|------|
| N | `dd` | 删除当前行（不覆盖剪贴板） |
| V | `d` | 删除选中内容（不覆盖剪贴板） |
| N | `xx` | 剪切当前行 |
| V | `x` | 剪切选中内容 |
| N | `cc` | 复制当前行 |
| V | `c` | 复制选中内容 |
| V | `<` | 向左缩进并保持选中 |
| V | `>` | 向右缩进并保持选中 |
| V | `p` | 粘贴不覆盖剪贴板（`"_dP`） |
| N/V/O | `s` | Flash 快速跳转 |
| N | `<leader>,` | 切换显示/隐藏不可见字符 |

### 4.6 移动与选择（mini.move + 原生）

| 模式 | 快捷键 | 作用 |
|------|--------|------|
| N/V | `<A-h>` / `<A-l>` | 向左/右移动字符或选区 |
| N/V | `<A-j>` / `<A-k>` | 向下/上移动行或选区 |

### 4.7 Telescope 搜索

| 模式 | 快捷键 | 作用 |
|------|--------|------|
| N | `<leader>ff` | 查找文件 |
| N | `<leader>fb` | 查找 Buffer |
| N | `<leader>fr` | 最近打开的文件 |
| N | `<leader>fg` | 全局内容搜索（Live Grep） |
| N | `<leader>fw` | 搜索当前光标下的单词 |
| N | `<leader>fc` | 当前文件模糊搜索 |
| N | `<leader>fs` | 文件符号（LSP） |
| N | `<leader>fS` | 工作区符号（LSP） |
| N | `<leader>fh` | 帮助文档搜索 |
| N | `<leader>fk` | 快捷键搜索 |
| N | `<leader>f:` | 命令搜索 |
| N | `<leader>fd` | 诊断信息搜索 |
| N | `<leader>f/` | 恢复上次搜索 |

**Telescope 弹窗内快捷键**：
- `<C-j>` / `<C-k>`：上下移动选择
- `<C-q>`：发送到 Quickfix 列表并打开
- `<Esc>`：关闭搜索窗口

### 4.8 LSP 与代码导航

| 模式 | 快捷键 | 作用 |
|------|--------|------|
| N | `K` | 悬浮文档（Hover） |
| N | `gd` | 查看定义（Glance 面板） |
| N | `gD` | 跳转到定义（Lspsaga） |
| N | `gR` | 查看引用（Glance） |
| N | `gY` | 查看类型定义（Glance） |
| N | `gM` | 查看实现（Glance） |
| N | `<leader>ca` | 代码动作（Code Action） |
| N | `<leader>rn` | 重命名（LSP 原生） |
| N | `<leader>lr` | 重命名全部（Lspsaga） |
| N | `<leader>lf` | 格式化当前文件 |
| N | `<leader>dq` | 代码修复（Lspsaga Code Action） |
| N | `[d` | 跳转到上一诊断 |
| N | `]d` | 跳转到下一诊断 |
| N | `<leader>dd` | 显示当前行诊断（Lspsaga） |
| N | `<leader>dD` | 显示工作区诊断（Lspsaga） |

### 4.9 Git 操作

| 模式 | 快捷键 | 作用 |
|------|--------|------|
| N | `<leader>gg` | 打开 LazyGit |
| N | `]h` | 跳转到下一 Git Hunk |
| N | `[h` | 跳转到上一 Git Hunk |

### 4.10 代码折叠（nvim-ufo）

| 模式 | 快捷键 | 作用 |
|------|--------|------|
| N | `zc` | 关闭当前折叠 |
| N | `zo` | 打开当前折叠 |
| N | `za` | 切换当前折叠 |
| N | `zM` | 关闭所有折叠 |
| N | `zR` | 展开所有折叠 |

### 4.11 Rust 开发

| 模式 | 快捷键 | 作用 |
|------|--------|------|
| N | `<leader>rr` | 运行 Rust 程序 |
| N | `<leader>rt` | 运行 Rust 测试 |
| N | `<leader>rd` | 调试 Rust 程序 |
| N | `<leader>re` | 解释当前错误 |
| N | `<leader>rc` | 打开 Cargo.toml |
| N | `<leader>rR` | 重启 Rust-Analyzer |

### 4.12 C++ 开发（DAP 调试）

| 模式 | 快捷键 | 作用 |
|------|--------|------|
| N | `<leader>cb` | 构建项目（CMake，输出到 `./build`） |
| N | `<leader>cr` | 构建并运行（自动检测 ELF 可执行文件） |
| N | `<leader>cd` | 构建并开始调试 |

### 4.13 调试通用快捷键（DAP）

| 模式 | 快捷键 | 作用 |
|------|--------|------|
| N | `<F5>` | 启动/继续调试 |
| N | `<F10>` | 单步跳过（Step Over） |
| N | `<F11>` | 单步进入（Step Into） |
| N | `<F12>` | 单步退出（Step Out） |
| N | `<leader>dk` | 切换断点 |
| N | `<leader>dK` | 设置条件断点 |
| N | `<leader>dr` | 打开 DAP REPL |
| N | `<leader>du` | 切换调试 UI 界面 |

### 4.14 多光标编辑（vim-visual-multi）

| 模式 | 快捷键 | 作用 |
|------|--------|------|
| N | `<C-n>` | 选中当前单词并跳到下一处匹配 |
| N | `<leader>A` | 全选所有匹配 |
| N | `<leader>/` | 正则搜索添加光标 |
| N | `<C-Down>` / `<C-Up>` | 向下/上添加光标（列模式） |
| N | `<C-g><C-g>` | 在当前位置添加光标 |
| V | `<leader>a` | 选区转多光标 |
| V | `<leader>c` | 选区每行一个光标 |
| V | `<leader>f` | 用选区内容全匹配 |
| V | `<leader>A` | 全选匹配 |
| VM | `Tab` | 切换 Cursor/Extend 模式 |
| VM | `n` / `N` | 下一个/上一个匹配 |
| VM | `}` / `{` | 跳到下一个/上一个光标 |
| VM | `q` | 跳过当前匹配 |
| VM | `Q` | 移除当前光标 |
| VM | `<C-;>` | **退出多光标模式** |
| VM | `u` / `<C-r>` | 撤销/重做 |
| N | `<C-LeftMouse>` | Ctrl+点击添加光标 |
| N | `<C-RightMouse>` | Ctrl+右键选中单词 |

**Leader 快捷入口**：
| 模式 | 快捷键 | 作用 |
|------|--------|------|
| N | `<leader>mn` | 选中单词（下一个） |
| N | `<leader>ma` | 全选匹配 |
| V | `<leader>mc` | Visual 选区转光标 |
| V | `<leader>mf` | Visual 查找匹配 |
| N | `<leader>mr` | 正则搜索 |
| N | `<leader>mp` | 在此位置添加光标 |

### 4.15 迷你地图（Neominimap）

| 模式 | 快捷键 | 作用 |
|------|--------|------|
| N | `<leader>nm` | 切换全局迷你地图 |
| N | `<leader>no` | 启用全局迷你地图 |
| N | `<leader>nc` | 禁用全局迷你地图 |
| N | `<leader>nr` | 刷新全局迷你地图 |
| N | `<leader>nwt` | 切换当前窗口迷你地图 |
| N | `<leader>ntt` | 切换当前标签页迷你地图 |
| N | `<leader>nbt` | 切换当前缓冲区迷你地图 |
| N | `<leader>nf` | 聚焦到迷你地图 |
| N | `<leader>nu` | 取消聚焦迷你地图 |
| N | `<leader>ns` | 切换迷你地图聚焦 |

### 4.16 注释与文档生成（Neogen）

| 模式 | 快捷键 | 作用 |
|------|--------|------|
| N | `<leader>Ng` | 自动生成注释（自动推断类型） |
| N | `<leader>Nf` | 为当前函数生成注释 |
| N | `<leader>Nc` | 为当前类/结构体生成注释 |
| N | `<leader>NF` | 生成文件头注释 |

### 4.17 Copilot AI 补全

| 模式 | 快捷键 | 作用 |
|------|--------|------|
| I | `<A-w>` | 接受完整补全建议 |
| I | `<M-]>` | 下一个建议 |
| I | `<M-[>` | 上一个建议 |
| I | `<C-]>` | 关闭建议 |

### 4.18 颜色拾取（ccc.nvim）

| 模式 | 快捷键 | 作用 |
|------|--------|------|
| N | `<leader>p` | 打开颜色调色盘 |

### 4.19 自动补全菜单（nvim-cmp）

| 模式 | 快捷键 | 作用 |
|------|--------|------|
| I | `<C-j>` | 下一个补全项 |
| I | `<C-k>` | 上一个补全项 |
| I | `<C-b>` | 补全文档向上滚动 |
| I | `<C-f>` | 补全文档向下滚动 |
| I | `<C-/>` | 手动触发补全 |
| I | `<CR>` | 确认选择 |

### 4.20 退出与保存

| 模式 | 快捷键 | 作用 |
|------|--------|------|
| N | `<leader>q` | 退出当前窗口 |
| N | `<leader>Q` | 全部退出 |

---

## 5. 特色功能详解

### 5.1 C++ 项目一键构建调试
- 自动检测 `CMakeLists.txt`，使用 CMake 构建到 `./build` 目录
- 自动检测 `./build` 中的 ELF 可执行文件作为调试目标
- 调试适配器：`codelldb`（通过 Mason 自动安装）

### 5.2 Rust 开发工作流
- `rustaceanvim` 提供完整的 Rust LSP 支持（替代标准 rust-analyzer 配置）
- `crates.nvim` 在 `Cargo.toml` 中显示依赖版本信息
- 一键运行、测试、调试

### 5.3 SSH 远程剪贴板
- 通过 OSC 52 协议，在 SSH 远程会话中复制的内容可直接同步到本地系统剪贴板

### 5.4 代码格式化
- 保存文件时自动格式化（`format_on_save`）
- 超时 500ms，失败时回退到 LSP 格式化

### 5.5 Dashboard 启动界面
- 启动 Neovim 时显示 ShenEternity 自定义 Banner
- 快捷键：`f` 找文件，`r` 最近文件，`G` 全局搜索，`l` 插件管理，`q` 退出

---

## 6. 文件结构树

```
~/.config/nvim/
├── init.lua                      # 主入口
├── README.md                     # 项目说明（本文档）
├── lazy-lock.json                # 插件版本锁定
└── lua/
    ├── config/
    │   ├── options.lua           # 基础选项
    │   ├── keymaps.lua           # 快捷键映射
    │   └── lazy.lua              # 插件管理器
    └── plugins/
        ├── ui/                   # 界面与主题
        │   ├── catppuccin.lua    # 颜色主题（mocha 深色风格）
        │   ├── lualine.lua       # 底部状态栏
        │   ├── bufferline.lua    # 顶部 Buffer 标签栏
        │   ├── dashboard.lua     # 启动欢迎界面
        │   ├── noice.lua         # 命令行/消息弹窗美化
        │   ├── notify.lua        # 通知消息美化
        │   ├── neominimap.lua    # 代码迷你地图
        │   ├── themify.lua       # 主题切换器
        │   ├── web-devicons.lua  # 文件类型图标
        │   ├── mini-icons.lua    # Mini 图标库
        │   └── deps.lua          # UI 依赖插件集合
        ├── editor/               # 编辑器增强
        │   ├── nvim-tree.lua     # 侧边文件树浏览器
        │   ├── autopairs.lua     # 自动括号/引号配对
        │   ├── comment.lua       # 快速注释/取消注释
        │   ├── treesitter.lua    # 语法解析与高亮
        │   ├── ts-autotag.lua    # HTML/JSX 标签自动处理
        │   ├── ufo.lua           # 智能代码折叠
        │   ├── flash.lua         # 快速跳转
        │   ├── illuminate.lua    # 高亮相同单词
        │   ├── minimove.lua      # 文本移动（Alt+h/j/k/l）
        │   ├── surround.lua      # 环绕字符操作
        │   ├── toggleterm.lua    # 浮动/底部终端
        │   ├── yazi.lua          # Yazi 文件管理器
        │   ├── blankline.lua     # 彩虹缩进参考线
        │   ├── rainbow.lua       # 彩虹括号匹配
        │   └── vim-visual-multi.lua  # 多光标编辑
        ├── search/               # 搜索
        │   └── telescope.lua     # 模糊搜索框架
        ├── lsp/                  # LSP 与代码导航
        │   ├── lspconfig.lua     # LSP 服务器配置
        │   ├── mason.lua         # LSP/DAP 安装管理器
        │   ├── lspsaga.lua       # LSP UI 增强
        │   ├── glance.lua        # 定义/引用查看面板
        │   └── inlay-hints.lua   # 行内类型提示
        ├── completion/           # 自动补全与代码片段
        │   ├── nvim-cmp.lua      # 补全引擎框架
        │   └── luasnip.lua       # 代码片段引擎
        ├── git/                  # Git 集成
        │   ├── gitsigns.lua      # 行内 Git 状态显示
        │   └── lazygit.lua       # 内嵌 LazyGit
        ├── lang/                 # 语言专项支持
        │   ├── rustaceanvim.lua  # Rust LSP 深度集成
        │   ├── rust-crates.lua   # Cargo 依赖管理
        │   ├── flutter.lua       # Flutter/Dart 开发支持
        │   └── neogen.lua        # 文档注释自动生成
        ├── debug/                # 调试与格式化
        │   ├── dap.lua           # DAP 调试核心
        │   └── formatting.lua    # 保存时自动格式化
        ├── ai/                   # AI 辅助
        │   ├── copilot.lua       # GitHub Copilot 补全
        │   ├── copilot-chat.lua  # Copilot 聊天交互
        │   ├── neocodeium.lua    # Codeium AI 补全（禁用）
        │   └── llama-vim.lua     # 本地模型补全（禁用）
        └── tools/                # 工具与辅助
            ├── which-key.lua     # 快捷键提示面板
            └── ccc.lua           # 颜色拾取器
```

---
