local M = {}

local group = vim.api.nvim_create_augroup("Texnotes", { clear = true })
local enabled = false
local running = false

local roots = {}

local function find_root(bufnr)
  local file = vim.api.nvim_buf_get_name(bufnr)
  local dir = vim.fs.dirname(file)

  local manage = vim.fs.find("manage.py", {
    path = dir,
    upward = true,
    stop = vim.uv.os_homedir(),
  })[1]

  if not manage then
    return nil
  end

  return vim.fs.dirname(manage)
end

local function get_root(bufnr)
  if roots[bufnr] then
    return roots[bufnr]
  end

  roots[bufnr] = find_root(bufnr)
  return roots[bufnr]
end

local function compile(bufnr)
  if running then
    return
  end

  local root = get_root(bufnr)

  local file = vim.api.nvim_buf_get_name(bufnr)
  local name = vim.fn.fnamemodify(file, ":t:r")

  running = true

  vim.system(
    { "python", "manage.py", "render", name, "pdf" },
    { cwd = root },
    function(result)
      running = false

      vim.schedule(function()
        if result.code ~= 0 then
          vim.notify(
            "texnotes compile failed",
            vim.log.levels.ERROR
          )
        end
      end)
    end
  )
end

function M.enable()
  if enabled then
    return
  end

  enabled = true

  vim.api.nvim_create_autocmd("BufWritePost", {
    group = group,
    pattern = "*.tex",
    callback = function(args)
      compile(args.buf)
    end,
  })

  vim.notify("Texnotes mode enabled")
end

function M.disable()
  enabled = false
  vim.api.nvim_clear_autocmds({ group = group })
  vim.notify("Texnotes mode disabled")
end

function M.toggle()
  if enabled then
    M.disable()
  else
    M.enable()
  end
end

return M
