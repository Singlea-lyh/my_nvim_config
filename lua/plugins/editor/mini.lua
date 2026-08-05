-- =============================================================================
-- mini.lua - 文本移动插件
-- =============================================================================
-- 使用 Alt+h/j/k/l 在普通/可视模式下移动选中文本或整行

--return {
--    "nvim-mini/mini.nvim",
--    config = function()
--        require("mini.move").setup({
--            mappings = {
--                left       = "<A-h>",
--                right      = "<A-l>",
--                down       = "<A-j>",
--                up         = "<A-k>",
--                line_left  = "<A-h>",
--                line_right = "<A-l>",
--                line_down  = "<A-j>",
--                line_up    = "<A-k>",
--            },
--        })
--    end,
--}
--
-- minimove.lua - 文本移动插件 + 插入模式下 Alt-e 跳出括号
--
--
--
return {
    "nvim-mini/mini.nvim",
    config = function()
        require("mini.move").setup({
            mappings = {
                left       = "<A-h>",
                right      = "<A-l>",
                down       = "<A-j>",
                up         = "<A-k>",
                line_left  = "<A-h>",
                line_right = "<A-l>",
                line_down  = "<A-j>",
                line_up    = "<A-k>",
            },
        })

        local function jump_out_of_bracket()
            local cur = vim.api.nvim_win_get_cursor(0)

            -- 向后（左）搜索最近的左括号 (、[、{
            -- 使用字符类 [([{] 匹配任意一个，无需转义
            local found = vim.fn.search('[([{]', 'bW')
            if found == 0 then
                vim.notify('No opening bracket found', 'warn')
                return
            end

            -- 光标现在停在左括号上，使用 % 跳转到匹配的右括号
            local ok = pcall(vim.cmd, 'normal! %')
            if not ok then
                vim.api.nvim_win_set_cursor(0, cur)
                vim.notify('Cannot match bracket', 'warn')
                return
            end

            -- 光标在右括号上，移到其后面
            local right = vim.api.nvim_win_get_cursor(0)
            local line = vim.api.nvim_buf_get_lines(0, right[1] - 1, right[1], false)[1]
            local new_col = math.min(right[2] + 1, #line) -- 右括号后一列
            vim.api.nvim_win_set_cursor(0, { right[1], new_col })

            -- 重新进入插入模式（因为执行了 normal! %）
            vim.cmd('startinsert')
        end

        vim.keymap.set('i', '<M-e>', jump_out_of_bracket, { desc = '跳出匹配括号' })
        vim.keymap.set('i', '<A-e>', jump_out_of_bracket, { desc = '跳出匹配括号' })
    end,
}
