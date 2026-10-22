
function set_digraph(chars, digraph)
    vim.cmd(string.format("call digraph_set('%s', '%s')", chars, digraph))
end

set_digraph('ZZ', 'ℤ')
