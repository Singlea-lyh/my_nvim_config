-- =============================================================================
-- bufferline.lua - 顶部 Buffer 标签栏插件
-- =============================================================================
-- 以标签页形式展示已打开的 Buffer，支持诊断图标、智能关闭、鼠标操作

return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local function smart_close()
      if vim.bo.modified then
        vim.cmd.write()
      end

      local current_buf = vim.fn.bufnr()
      local buflisted = vim.fn.getbufinfo({ buflisted = 1 })

      if #buflisted <= 1 then
        vim.cmd("bdelete!")
        vim.cmd("enew")
        return
      end

      local current_idx = 0
      for i, buf in ipairs(buflisted) do
        if buf.bufnr == current_buf then
          current_idx = i
          break
        end
      end

      if current_idx > 0 then
        if current_idx < #buflisted then
          vim.cmd("BufferLineCycleNext")
        else
          vim.cmd("BufferLineCyclePrev")
        end
      end

      vim.cmd("bdelete! " .. current_buf)
    end

    require("bufferline").setup({
      options = {
        mode = "buffers",
        style_preset = require("bufferline").style_preset.default,
        themable = true,
        numbers = "none",
        close_command = smart_close,
        right_mouse_command = smart_close,
        middle_mouse_command = smart_close,
        indicator = { style = "icon" },
        buffer_close_icon = "󰅖",
        modified_icon = "●",
        close_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 18,
        max_prefix_length = 15,
        truncate_names = true,
        tab_size = 18,
        diagnostics = "nvim_lsp",
        diagnostics_update_in_insert = false,
        offsets = {
          {
            filetype = "NvimTree",
            text = "ShenEternity & 文件树",
            highlight = "Directory",
            text_align = "left",
          },
        },
        color_icons = true,
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = true,
        show_tab_indicators = true,
        persist_buffer_sort = true,
        separator_style = "thin",
        enforce_regular_tabs = false,
        always_show_bufferline = true,
        hover = {
          enabled = true,
          delay = 200,
          reveal = { "close" },
        },
      },
    })

    vim.keymap.set("n", "<leader>bc", smart_close, { desc = "智能关闭buffer" })
    vim.keymap.set("n", "<leader>bo", ":BufferLineCloseOthers<CR>", { desc = "关闭其他buffer" })
    vim.keymap.set("n", "<leader>bl", ":BufferLineCloseLeft<CR>", { desc = "关闭左侧buffer" })
    vim.keymap.set("n", "<leader>br", ":BufferLineCloseRight<CR>", { desc = "关闭右侧buffer" })
    vim.keymap.set("n", "<S-h>", ":BufferLineCyclePrev<CR>", { desc = "上一个buffer" })
    vim.keymap.set("n", "<S-l>", ":BufferLineCycleNext<CR>", { desc = "下一个buffer" })
    vim.keymap.set("n", "<leader>bh", ":BufferLineMovePrev<CR>", { desc = "向左移动buffer" })
    vim.keymap.set("n", "<leader>bl", ":BufferLineMoveNext<CR>", { desc = "向右移动buffer" })
  end,
}
