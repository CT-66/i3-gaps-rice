-- lualine --
require('lualine').setup {
  options = {
    icons_enabled = true,
    -- theme = 'onedark',
    theme = 'palenight',
    -- component_separators = '|',
    component_separators = {},
    -- section_separators = { left = '', right = '' },
    section_separators = {},
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {'filename'},
    lualine_x = {'filetype'},
    lualine_y = {'diagnostics'},
    lualine_z = {}
  },
  extensions = {}
}

-- neoscroll --

require('neoscroll').setup({--
    mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>',
                '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
    hide_cursor = true,          -- Hide cursor while scrolling
    stop_eof = true,             -- Stop at <EOF> when scrolling downwards
    use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
    respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
    cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
    easing_function = nil,        -- Default easing function
    pre_hook = nil,              -- Function to run before the scrolling animation starts
    post_hook = nil,              -- Function to run after the scrolling animation ends
})

-- barbar.nvim --

-- alt+x -> close buffer
vim.g.bufferline = {
    animation = false,
    auto_hide = false,
    tabpages = false,
    clickable = true,
    icons = 'both',
    icon_separator_active = '',
    icon_separator_inactive = '',
    icon_close_tab = '',
    icon_close_tab_modified = '●',

}


-- toggleterm.nvim
require("toggleterm").setup {
    open_mapping = [[<c-\>]],
    direction = 'vertical',
    size = 50,
    border = 'curved',
    insert_mappings = true,
    shade_terminals = true,
    shading_factor = '1',
    close_on_exit = false

}

-- indent-blankline.nvim
require("indent_blankline").setup {

}
