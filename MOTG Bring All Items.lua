--Pick your location to bring all items to (best works midair) and execute it. Does the work for you and brings everything as long as they are items.

local a = game:GetService("Workspace").Items:getDescendants()

local b = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

for i,v in pairs(a) do
    if v:IsA('Part') and v.Name == 'Base' then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
        wait(1)
        game:GetService("ReplicatedStorage").Resources.Remotes.InteractItem:FireServer("Take",v.Parent)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = b
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
        wait(1)
        game:GetService("ReplicatedStorage").Resources.Remotes.InteractItem:FireServer("Drop",v.Parent)
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
        wait(1)
    end
end
