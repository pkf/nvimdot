vim.g.dashboard_default_executive ='telescope'
vim.g.dashboard_footer_icon = "🐬 "

vim.g.dashboard_custom_header = {
[[  ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗ ]],
[[  ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║  ]],
[[  ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║ ]],
[[  ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║  ]],
[[  ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║  ]],
[[  ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝    ]],
[[                           V 0.6                         ]]
}
vim.g.dashboard_custom_section = {
    change_colorscheme = {
        description = {" Scheme change              comma s c "},
        command = "DashboardChangeColorscheme"
    },
    find_frecency = {
        description = {" File frecency              comma f r "},
        command = "Telescope frecency"
    },
    find_history = {
        description = {" File history               comma f e "},
        command = "DashboardFindHistory"
    },
    find_project = {
        description = {" Project find               comma f p "},
        command = "Telescope project"
    },
    find_file = {
        description = {" File find                  comma f f "},
        command = "DashboardFindFile"
    },
    file_new = {
        description = {" File new                   comma f n "},
        command = "DashboardNewFile"
    },
    find_word = {
        description = {" Word find                  comma f w "},
        command = "DashboardFindWord"
    }
}