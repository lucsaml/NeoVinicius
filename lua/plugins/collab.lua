return {
{
    "andweeb/presence.nvim",
    config = function()
        require("presence"):setup({
            -- Opções personalizadas (opcional)
            main_image          = "neovim",                   -- Ícone principal
            editing_text        = "Editando %s",              -- %s vira o nome do arquivo
            workspace_text      = "Trabalhando no %s",        -- %s vira o nome da pasta
            show_time           = true,                       -- Mostra o timer
        })
    end
},
{
    "jbyuki/instant.nvim",
    config = function()
        -- Defina o seu nome que vai aparecer para os outros
        vim.g.instant_username = "Samuel M. de Oliveira Neto"
    end
}
}
