am.app.set_model(
    {
        DAEMON_URL = 'https://github.com/decenomy/MONK/releases/download/v3.1.0.0/MONK-3.1.0.0-Linux.zip'
    },
    {merge = true, overwrite = true}
)

am.app.set_model(
    {
        DAEMON_CONFIGURATION = {
            server = (type(am.app.get_configuration('NODE_PRIVKEY') == 'string') or am.app.get_configuration('SERVER')) and
                1 or
                nil,
            listen = (type(am.app.get_configuration('NODE_PRIVKEY') == 'string') or am.app.get_configuration('SERVER')) and
                1 or
                nil,
            masternodeprivkey = am.app.get_configuration('NODE_PRIVKEY'),
            masternode = am.app.get_configuration('NODE_PRIVKEY') and 1 or nil
        },
        SERVICE_CONFIGURATION = am.app.get_configuration("SERVICE_CONFIGURATION", {
            StandardOutput = "append:" .. os.cwd() .. "/data/output.log",
            StandardError =  "append:" .. os.cwd() .. "/data/output.log"
        }),
        DAEMON_NAME = 'monkd',
        CLI_NAME = 'monk-cli',
        CONF_NAME = 'monk.conf',
        CONF_SOURCE = '__btc/assets/daemon.conf',
        SERVICE_NAME = 'monkd',
        ABOUT_SOURCE = "__monk/about.hjson"
    },
    {merge = true, overwrite = true}
)
