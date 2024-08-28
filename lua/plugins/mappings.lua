return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["<Leader>jo"] = {
            function() require("jdtls").organize_imports() end,
            desc = "[J]ava [O]rganize Imports",
          },
          ["<Leader>jv"] = {
            function() require("jdtls").extract_variable() end,
            desc = "[J]ava Extract [V]ariable",
          },
          ["<Leader>jc"] = {
            function() require("jdtls").extract_constant() end,
            desc = "[J]ava Extract [C]onstant",
          },
          ["<Leader>jt"] = {
            function() require("jdtls").test_nearest_method() end,
            desc = "[J]ava [T]est Method",
          },
          ["<Leader>jT"] = {
            function() require("jdtls").test_class() end,
            desc = "[J]ava [T]est Class",
          },
          ["<Leader>ju"] = { "<cmd>JdtUpdateConfig<cr>", desc = "[J]ava [U]pdate Config" },
          ["<Leader>j"] = { name = "Java actions" },
        },
        t = {},
      },
    },
  },
}
