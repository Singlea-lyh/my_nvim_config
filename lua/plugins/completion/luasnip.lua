-- =============================================================================
-- luasnip.lua - Lua 代码片段引擎
-- =============================================================================
-- 提供代码片段展开功能，支持自定义 C++ 和 Dart 类模板

return {
  "L3MON4D3/LuaSnip",
  version = "v2.*",
  build = "make install_jsregexp",
  dependencies = { "rafamadriz/friendly-snippets" },
  config = function()
    require("luasnip.loaders.from_vscode").lazy_load()

    local ls = require("luasnip")
    local s = ls.snippet
    local t = ls.text_node
    local i = ls.insert_node
    local rep = require("luasnip.extras").rep

    ls.add_snippets("cpp", {
      s("myclass", {
        t("class "), i(1, "ClassName"), t({ " {", "public:", "    " }),
        rep(1), t("();"),
        t({ "", "    ~" }), rep(1), t("();"),
        t({ "", "};" }),
      }),
    })

    ls.add_snippets("dart", {
      s("myclass", {
        t("class "), i(1, "ClassName"), t({ " {", "  " }),
        rep(1), t("();"),
        t({ "", "", "  void dispose() {", "    // TODO: implement dispose", "  }", "}" }),
      }),
    })
  end,
}
