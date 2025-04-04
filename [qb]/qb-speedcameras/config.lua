Config = {}

Config.MPH = true                 -- bool: false for KMH / true for MPH
Config.useFlashingScreen = false   -- bool: Flashes screen white for a brief moment
Config.useCameraSound = true      -- bool: Makes a camera shutter sound effect
Config.useBlips = false            -- bool: Turns blips on/off
Config.alertPolice = true         -- bool: Whether to alert police above certain speed
Config.alertSpeed = 130           -- number: Alerts police when caught above this speed
Config.useBilling = false          -- bool: Bills player by fineAmount automatically if true - Only change if you know what you're doing
Config.OnlyBillIfOwned = true    -- bool: Only bill the player if they own the vehicle they are driving
Config.showNotification = false   -- bool: Shows a notification when caught
Config.sendEmail = true           -- bool: Sends an email when caught, false shows a notification

Config.ignoredJobs = {            -- table: Table of jobs that wll not get fined by the cameras when on duty
    'police',
    'ambulance'
}

Config.Cameras = {
    -- [Speed] = {}
    [60] = {
        fineAmount = 50,
        blipColour = 5,
        blipSprite = 184,
        blipSize = 0.9,
        locations = {
            vector3(-524.2645, -1776.3569, 21.3384),
            vector3(262.11, -584.34, 43.04)
        }
    },
    [80] = {
        fineAmount = 75,
        blipColour = 17,
        blipSprite = 184,
        blipSize = 0.9,
        locations = {
            vector3(2506.0671, 4145.2431, 38.1054),
            vector3(-113.0, 6265.5, 30.88)
        }
    },
    [120] = {
        fineAmount = 100,
        blipColour = 1,
        blipSprite = 184,
        blipSize = 0.9,
        locations = {
            vector3(1584.9281, -993.4557, 59.3923),
            vector3(2442.2006, -134.6004, 59.3923),
            vector3(2871.7951, 3540.5795, 53.0930),
            vector3(2636.5, 474.12, 95.53),
            vector3(2173.89, 2736.88, 46.89),
            vector3(1551.86, 6416.44, 23.96),
            vector3(-900.21, 5433.85, 35.95),
            vector3(2777.27, 4519.06, 46.43),
            vector3(1309.64, 591.15, 79.93)
        }
    }
}