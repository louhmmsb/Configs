M = {}

function M.quitWithoutSaving()
  if vim.bo.mod == false or vim.fn.input("Buffer not saved, quit anyway? [y/N] "):lower() == "y" then
    vim.api.nvim_command('bdelete!')
  end
end

return M
