local function get_jdtls()
  -- Get the Mason Registry to gain access to downloaded binaries
  local mason_registry = require "mason-registry"
  -- Find the JDTLS package in the Mason Regsitry
  local jdtls = mason_registry.get_package "jdtls"
  -- Find the full path to the directory where Mason has downloaded the JDTLS binaries
  local jdtls_path = jdtls:get_install_path()
  -- Obtain the path to the jar which runs the language server
  local launcher = vim.fn.glob(jdtls_path .. "/jdtls")
  return launcher
end

local config = {
  cmd = { get_jdtls() },
  root_dir = vim.fs.dirname(vim.fs.find({ "gradlew", ".git", "mvnw" }, { upward = true })[1]),
}
require("jdtls").start_or_attach(config)
