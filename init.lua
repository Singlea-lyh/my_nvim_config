-- =============================================================================
-- init.lua - Neovim 主配置入口
-- =============================================================================
-- 加载顺序：options → keymaps → lazy(plugins)
--
-- 插件目录结构（lua/plugins/ 下按功能分类）：
--   ui/          界面与主题
--   editor/      编辑器增强
--   search/      搜索
--   lsp/         LSP 与代码导航
--   completion/  自动补全与代码片段
--   git/         Git 集成
--   lang/        语言专项支持
--   debug/       调试与格式化
--   ai/          AI 辅助
--   tools/       工具与辅助
--
-- lazy.nvim 通过 { import = "plugins" } 自动递归加载所有子目录下的 .lua 文件
-- =============================================================================

-- Neovim 数据目录
local data_dir = vim.fn.stdpath("data")
local config_dir = vim.fn.stdpath("config")

-- 确保必要的目录存在
local dirs = {
  data_dir .. "/lazy",
  data_dir .. "/undo",
  data_dir .. "/swap",
  data_dir .. "/backup",
}
for _, dir in ipairs(dirs) do
  if vim.fn.isdirectory(dir) == 0 then
    vim.fn.mkdir(dir, "p")
  end
end

-- 设置模块搜索路径，确保 lua/ 目录下的模块可被 require()
vim.opt.rtp:prepend(config_dir)

-- =============================================================================
-- 1. 加载编辑器基础选项
-- =============================================================================
local ok, err = pcall(require, "config.options")
if not ok then
  vim.notify("加载 config.options 失败: " .. tostring(err), vim.log.levels.ERROR)
end

-- =============================================================================
-- 2. 加载快捷键映射（必须在 lazy 之前，因为 Leader 键在此设置）
-- =============================================================================
ok, err = pcall(require, "config.keymaps")
if not ok then
  vim.notify("加载 config.keymaps 失败: " .. tostring(err), vim.log.levels.ERROR)
end

-- =============================================================================
-- 3. 加载插件管理器（lazy.nvim）
--    lazy.lua 中 { import = "plugins" } 会自动加载 lua/plugins/**/*.lua
-- =============================================================================
ok, err = pcall(require, "config.lazy")
if not ok then
  vim.notify("加载 config.lazy 失败: " .. tostring(err), vim.log.levels.ERROR)
end
