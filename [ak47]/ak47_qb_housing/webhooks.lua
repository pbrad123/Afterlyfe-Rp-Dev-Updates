Config.AuthorTitle   = 'Ak47 Housing'
Config.AvatarUrl     = 'https://cdn.discordapp.com/attachments/732315339601477652/1097062937451040798/logo_small.png'
Config.Webhooks = {
    createhouse = {
        Webhook     = 'https://discord.com/api/webhooks/1247843441216454728/4txqsMQUOqpxz0Eije5kXomlG_lKaJmJgsKP_vJMuz8ttP5Bk51GiHhPD_zf7WDMekCV', --Discord webhook link
        Title       = "A new house has been created",
        PlayerData = {
            field       = "Player Data:",
            id          = "**ID: **",
            name        = "**Name: **",
            identifier  = "**Identifier: **",
        },
        HouseData = {
            field       = "House Data:",
            hid         = "**ID: **",
            type        = "**Type: **",
            shell       = "**Model: **",
            price       = "**Price: **",
            inventory   = "**Inventory: **",
            coords      = "**Coordinates: **",
        },
    },
    deletehouse = {
        Webhook     = 'https://discord.com/api/webhooks/1247843441216454728/4txqsMQUOqpxz0Eije5kXomlG_lKaJmJgsKP_vJMuz8ttP5Bk51GiHhPD_zf7WDMekCV', --Discord webhook link
        Title       = "A house has been deleted",
        PlayerData = {
            field       = "Player Data:",
            id          = "**ID: **",
            name        = "**Name: **",
            identifier  = "**Identifier: **",
        },
        HouseData = {
            field       = "House Data:",
            hid         = "**ID: **",
            type        = "**Type: **",
            shell       = "**Model: **",
            price       = "**Price: **",
            inventory   = "**Inventory: **",
            coords      = "**Coordinates: **",
        },
    },
    buyhouse = {
        Webhook     = 'https://discord.com/api/webhooks/1247843441216454728/4txqsMQUOqpxz0Eije5kXomlG_lKaJmJgsKP_vJMuz8ttP5Bk51GiHhPD_zf7WDMekCV', --Discord webhook link
        Title       = "House purchased",
        PlayerData = {
            field       = "Player Data:",
            id          = "**ID: **",
            name        = "**Name: **",
            identifier  = "**Identifier: **",
        },
        HouseData = {
            field       = "House Data:",
            hid         = "**ID: **",
            type        = "**Type: **",
            shell       = "**Model: **",
            price       = "**Price: **",
            inventory   = "**Inventory: **",
            coords      = "**Coordinates: **",
        },
    },
    renthouse = {
        Webhook     = 'https://discord.com/api/webhooks/1247843441216454728/4txqsMQUOqpxz0Eije5kXomlG_lKaJmJgsKP_vJMuz8ttP5Bk51GiHhPD_zf7WDMekCV', --Discord webhook link
        Title       = "House rent",
        PlayerData = {
            field       = "Player Data:",
            id          = "**ID: **",
            name        = "**Name: **",
            identifier  = "**Identifier: **",
        },
        HouseData = {
            field       = "House Data:",
            hid         = "**ID: **",
            type        = "**Type: **",
            shell       = "**Model: **",
            price       = "**Price: **",
            inventory   = "**Inventory: **",
            coords      = "**Coordinates: **",
        },
    },
    installmenthouse = {
        Webhook     = 'https://discord.com/api/webhooks/1247843441216454728/4txqsMQUOqpxz0Eije5kXomlG_lKaJmJgsKP_vJMuz8ttP5Bk51GiHhPD_zf7WDMekCV', --Discord webhook link
        Title       = "House Installment",
        PlayerData = {
            field       = "Player Data:",
            id          = "**ID: **",
            name        = "**Name: **",
            identifier  = "**Identifier: **",
        },
        HouseData = {
            field       = "House Data:",
            hid         = "**ID: **",
            type        = "**Type: **",
            shell       = "**Model: **",
            price       = "**Price: **",
            inventory   = "**Inventory: **",
            coords      = "**Coordinates: **",
        },
    },
}