local helper = require("gx.helper")

local M = {}

M.filetype = "lua"

M.priority = 30

-- get url from line (with and without http/s)
function M.handle(mode, line)
  local pattern = '"[^%s]*/[^%s]*"'
  local username_repo = helper.find(line, mode, pattern)
  if username_repo then
    return "https://github.com/" .. username_repo
  end
end

return M