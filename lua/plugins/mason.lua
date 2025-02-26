-- Customize Mason plugins

---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        -- ========================
        -- Core Languages & Runtimes
        -- ========================
        "clangd",        -- C/C++
        "denols",        -- Deno/TypeScript runtime
        "gopls",         -- Go
        "lua_ls",        -- Lua
        "ols",           -- Odin
        "rust_analyzer", -- Rust
        "zls",           -- Zig

        -- JavaScript/TypeScript
        "ts_ls", -- TypeScript

        -- ====================
        -- Scripting & Automation
        -- ====================
        "bashls",               -- Bash
        "jedi_language_server", -- Python
        "pylsp",                -- Python
        "pyright",              -- Python

        -- ================
        -- Embedded & IoT
        -- ================
        "arduino_language_server", -- Arduino

        -- ================
        -- Web Development
        -- ================
        -- Frameworks
        "astro",  -- Astro
        "htmx",   -- HTMX
        "svelte", -- Svelte
        "vuels",  -- Vue

        -- HTML/CSS
        "cssls",         -- CSS
        "css_variables", -- CSS Variables
        "html",          -- HTML
        "tailwindcss",   -- Tailwind CSS

        -- ============
        -- Databases
        -- ============
        "sqlls", -- SQL

        -- ====================
        -- Documentation & Text
        -- ====================
        "ltex",     -- LaTeX/Markdown (grammar/spellcheck)
        "marksman", -- Markdown
        "textlsp",  -- Generic text

        -- ============
        -- DevOps
        -- ============
        "dockerls", -- Docker

        -- ================
        -- Data Formats
        -- ================
        "jsonls",  -- JSON
        "yamlls",  -- YAML
        "graphql", -- GraphQL
        "buf_ls",  -- Protocol Buffers
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = {
        "stylua",
        -- add more arguments for adding more null-ls sources
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      ensure_installed = {
        "python",
        -- add more arguments for adding more debuggers
      },
    },
  },
}
