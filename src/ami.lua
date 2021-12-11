return {
    title = 'MONK Node',
    base = "__btc/ami.lua",
    commands = {
        info = {
            action = '__monk/info.lua'
        },
        bootstrap = {
            description = "ami 'bootstrap' sub command",
            summary = 'Bootstraps the MONK node',
            action = '__monk/bootstrap.lua',
            contextFailExitCode = EXIT_APP_INTERNAL_ERROR
        }
    }
}
