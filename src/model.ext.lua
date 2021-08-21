am.app.set_model(
    {
        DAEMON_CONFIGURATION = {
            server = (type(am.app.get_configuration("NODE_PRIVKEY") == "string") or am.app.get_configuration("SERVER")) and 1 or nil,
            listen = (type(am.app.get_configuration("NODE_PRIVKEY") == "string") or am.app.get_configuration("SERVER")) and 1 or nil,
            masternodeprivkey = am.app.get_configuration("NODE_PRIVKEY"),
            masternode = am.app.get_configuration("NODE_PRIVKEY") and 1 or nil
        },
        DAEMON_NAME = "monkd",
        CLI_NAME = "monk-cli",
        CONF_NAME = "monk.conf",
        CONF_SOURCE = "__btc/assets/daemon.conf",
        SERVICE_NAME = "monkd",
    },
    { merge = true, overwrite = true }
)