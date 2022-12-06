Config = {}

zCore = {
    ["Prefix"] = {
        Prefix = "^8[^4zCore^8] ",
        InitializeGroup = "^8[^2Group Loaded^8] ",
        InitializeCarPlace = "^8[^2Script CarPlace^8] ",
        InitializeNoDropPnj = "^8[^2Script NoDropPnj^8] ",
        Error = "^8[^1Error^8] ",
    },
    ["Commands"] = {
        tpm = "tpm",
        announce = "annonce",
    },
    ["Notification"] = {
        NoMarker = " Tu n'a pas de ~r~marker ~s~!",
        OkMarker = "Tu vien de téléporter à un ~b~marker ~s~!",
        NoPermission = "~r~Tu n'a pas la permission d'exécuter cette commande !",
    },
    ["Assets"] = {
        Roulades = false, -- false = Rouade désactivé | true = Rouade activé
        CoupWeapon = true, -- false = Coup de cross désactivé | true = Coup de cross activé
        NoPolice = false, -- false = pnj Police désactivé | true = pnj Police activé
        NoReticle = false, -- false = Reticle désactivé | true = Reticle activé
        NoBunnyHop = false, -- false = BunnyHop désactivé | true = BunnyHop activé
        NoDriveBy = false, -- false = DriveBy désactivé | true = DriveBy activé

    }
}