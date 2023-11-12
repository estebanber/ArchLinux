require('neorg').setup {
    load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {},
        ["core.ui.calendar"] = {},
        ["core.dirman"] = {
            config = {
                workspaces = {
                    budd  = "~/notes/budderfly",
                    notes = "~/notes"
                },
                default_workspace = "notes"
            }
        }
    }
}
