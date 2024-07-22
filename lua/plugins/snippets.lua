-- ~/.config/nvim/lua/custom/snippets.lua
local ls = require("luasnip")

-- Define HTML, CSS, JavaScript snippets here
local html_snippets = {
  ls.parser.parse_snippet("html", "<!DOCTYPE html>\n<html>\n<head>\n  <title>$1</title>\n  <link rel=\"stylesheet\" href=\"$2\">\n</head>\n<body>\n  $0\n</body>\n</html>"),
}

local js_snippets = {
  ls.parser.parse_snippet("log", "console.log($1);"),
}

local css_snippets = {
  ls.parser.parse_snippet("center", "display: flex;\njustify-content: center;\nalign-items: center;"),
}

local php_snippets = {
  -- Include HTML, CSS, and JS snippets in PHP
  ls.parser.parse_snippet("html", "<!DOCTYPE html>\n<html>\n<head>\n  <title>$1</title>\n  <link rel=\"stylesheet\" href=\"$2\">\n</head>\n<body>\n  $0\n</body>\n</html>"),
  ls.parser.parse_snippet("log", "console.log($1);"),
  ls.parser.parse_snippet("center", "display: flex;\njustify-content: center;\nalign-items: center;"),
}

-- Add snippets to LuaSnip
ls.add_snippets("php", php_snippets)
ls.add_snippets("html", html_snippets)
ls.add_snippets("javascript", js_snippets)
ls.add_snippets("css", css_snippets)
return {
  {
    "L3MON4D3/LuaSnip",
    config = function()
      require("luasnip/loaders/from_vscode").lazy_load()  -- Loads snippets from friendly-snippets
    end,
  },
  {
    "rafamadriz/friendly-snippets", -- Optional: Predefined snippets
    config = function()
      require("luasnip/loaders/from_vscode").lazy_load()
    end,
  },
}
