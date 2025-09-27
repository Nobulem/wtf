local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/refs/heads/main/Library.lua"))()

local function notify(title, text, duration)
    Library:Notify({
        Title = title or "nobulem.wtf",
        Description = text or "No message provided.",
        Time = duration or 4
    })
end

local Games = {
    [17129858194] = "loadstring(game:HttpGet(\"https://api.luarmor.net/files/v3/loaders/fce9f2b938d2826ea10a048fbbccde58.lua\"))()" -- Realm rampage
}

local Script = Games[game.PlaceId]

if not Script then
    notify("nobulem.wtf", "This game is not supported.", 6)
    return
end

notify("nobulem.wtf", "Loading script...", 3)
task.wait(0.5)
loadstring(Script)()
notify("nobulem.wtf", "Loaded successfully!", 4)
