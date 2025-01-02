print("Thanks for using my toolreach!")
print("https://github.com/marvcolol")

local player = game.Players.LocalPlayer
local backpack = player.Backpack

local toolNames = {"[Knife]", "Knife", "knife"}

local function changeHandleSize(toolName)
    local tool = backpack:FindFirstChild(toolName)
    if tool and tool:FindFirstChild("Handle") then
        tool.Handle.Size = Vector3.new(250, 250, 250) -- Can be set higher but bigger handle is more lag and there is a limit to how big you can make it.
        print(toolName .. " found.")
        return true
    end
    return false
end

local toolFound = false

for _, toolName in ipairs(toolNames) do
    if changeHandleSize(toolName) then
        toolFound = true
        break
    end
end

if not toolFound then
    print("No eligible tools found.")
end
