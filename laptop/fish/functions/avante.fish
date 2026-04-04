function avante
    nvim -c "lua vim.defer_fn(function()require(\"avante.api\").zen_mode()end, 100)"
end
