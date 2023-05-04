local M = {}

local function translate_keymap(mode, key, english_key)
  local keymap_opts = { noremap = true, silent = true }
  vim.api.nvim_set_keymap(mode, key, english_key, keymap_opts)
  vim.api.nvim_set_keymap(mode, key:upper(), english_key:upper(), keymap_opts)
end

local function set_russian_vim_keymaps()
  local russian_to_english = {
    ["й"] = "q",
    ["ц"] = "w",
    ["у"] = "e",
    ["к"] = "r",
    ["е"] = "t",
    ["н"] = "y",
    ["г"] = "u",
    ["ш"] = "i",
    ["щ"] = "o",
    ["з"] = "p",
    ["ф"] = "a",
    ["ы"] = "s",
    ["в"] = "d",
    ["а"] = "f",
    ["п"] = "g",
    ["р"] = "h",
    ["о"] = "j",
    ["л"] = "k",
    ["д"] = "l",
    ["ж"] = ";",
    ["я"] = "z",
    ["ч"] = "x",
    ["с"] = "c",
    ["м"] = "v",
    ["и"] = "b",
    ["т"] = "n",
    ["ь"] = "m",
    ["б"] = ",",
    ["ю"] = ".",
    ["ё"] = "`",
  }

  for russian_key, english_key in pairs(russian_to_english) do
    translate_keymap("n", russian_key, english_key)
    translate_keymap("v", russian_key, english_key)
  end
end

function M.setup(user_config)
  user_config = user_config or {}
  -- Handle user configuration options here in the future

  -- Set up the keymaps
  set_russian_vim_keymaps()
end

return M
