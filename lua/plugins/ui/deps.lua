-- =============================================================================
-- deps.lua - UI 依赖与美化辅助插件
-- =============================================================================
-- 提供选择框/输入框美化、Markdown 渲染等基础 UI 增强功能

return {
  { "stevearc/dressing.nvim" },      -- 改善 vim.ui.select / vim.ui.input 界面
  { "nvim-lua/plenary.nvim" },       -- Lua 工具库（众多插件的依赖）
  { "MunifTanjim/nui.nvim" },        -- UI 组件库（Noice 等插件的依赖）
  { "nvim-tree/nvim-web-devicons" }, -- 文件类型图标
  { "MeanderingProgrammer/render-markdown.nvim" }, -- Markdown 文件渲染美化
}
