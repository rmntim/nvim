local neovide = vim.g.neovide
if neovide then
  vim.g.neovide_window_blurred = true
  vim.g.neovide_floating_blur_amount_x = 2.0
  vim.g.neovide_floating_blur_amount_y = 2.0
  vim.g.neovide_transparency = 0.8
end

---@type LazySpec
return {}
