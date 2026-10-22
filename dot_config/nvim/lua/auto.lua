local api = vim.api;

-- autocommands
--- This function is taken from https://github.com/norcalli/nvim_utils
function nvim_create_augroups(definitions)
  for group_name, definition in pairs(definitions) do
    api.nvim_command('augroup '..group_name)
    api.nvim_command('autocmd!')
    for _, def in ipairs(definition) do
      local command = table.concat(vim.tbl_flatten{'autocmd', def}, ' ')
      api.nvim_command(command)
    end
    api.nvim_command('augroup END')
  end
end

local autocmds = {
    terminal_job = {
        { "TermOpen", "*", [[tnoremap <buffer> <Esc> <c-\><c-n>]] };
        { "TermOpen", "*", "startinsert" };
        { "TermOpen", "*", "setlocal nonumber norelativenumber" };
    };
    sage = {
        { "BufRead", "*.sage,*.spyx,*.pyx", "set filetype=python" };
    };
    tabs = {
        { "FileType", "nix", "setlocal tabstop=2 shiftwidth=2 expandtab" };
        { "FileType", "typescript", "setlocal tabstop=2 shiftwidth=2 expandtab" };
        { "FileType", "typescriptreact", "setlocal tabstop=2 shiftwidth=2 expandtab" };
    };
}

nvim_create_augroups(autocmds)
-- autocommands END
