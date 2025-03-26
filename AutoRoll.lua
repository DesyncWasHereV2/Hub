local Webhook = loadstring(game:HttpGet("https://raw.githubusercontent.com/DesyncWasHereV2/Webhook/refs/heads/main/Webhook.lua"))()
local WebhookURL = _G.Webhook

local webhookInstance = Webhook.new(WebhookURL, {})

local PetsDirectory = game:GetService("ReplicatedStorage").__DIRECTORY:WaitForChild("Pets"):GetDescendants()
local PetsDirectoryTable = {}

for i, v in pairs(PetsDirectory) do
    if v:IsA("ModuleScript") then
        PetsDirectoryTable[v.Name] = require(v)
    end
end

local function HandlePetRoll()
    local Success, Idk2, Pets, Idk3, Idk4, Idk5 = game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Eggs_Roll"):InvokeServer()

    if Success and Pets and Pets.Pets then
        for _, t in pairs(Pets.Pets) do
            if type(t) == "table" and t.data then
                local PetName = t.data.id
                if PetsDirectoryTable[PetName] then
                    local Data = PetsDirectoryTable[PetName]

                    if Data.huge or Data.secret or Data.titanic then
                        local embedData = {
                            ["title"] = "",
                            ["description"] = "",
                            ["color"] = 0xFFFF00,
                            ["fields"] = {
                                {
                                    ["name"] = "🐾 Pet Name",
                                    ["value"] = PetName,
                                    ["inline"] = true
                                }
                            }
                        }
                        
                        if Data.huge then
                            embedData.title = "🎉 Huge Pet Hatched! 🎉"
                            embedData.description = "🔥 A **HUGE** pet named **" .. PetName .. "** has been hatched! 🔥"
                            embedData.color = 0xFF5733
                        elseif Data.secret then
                            embedData.title = "🕵️ Secret Pet Hatched! 🕵️"
                            embedData.description = "🤫 A **SECRET** pet named **" .. PetName .. "** has been discovered! 🤫"
                            embedData.color = 0x900C3F
                        elseif Data.titanic then
                            embedData.title = "🚢 Titanic Pet Hatched! 🚢"
                            embedData.description = "🌊 A **TITANIC** pet named **" .. PetName .. "** has been unleashed! 🌊"
                            embedData.color = 0x1E90FF
                        end
                        
                        if t.data["sh"] and t.data["sh"] == true then
                            embedData.title = "✨ SHINY " .. embedData.title
                            embedData.description = embedData.description .. " ✨ And it's **SHINY**! ✨"
                            embedData.color = 0xFFD700
                        end
                        
                        webhookInstance:Edit({
                            embeds = { embedData }
                        })
                        
                        webhookInstance:Post()
                    end
                end
            end
        end
    end
end

while true do
    if _G.ConnectionAutoRoll then
        HandlePetRoll()
    end
    task.wait(0.1)
end
