while wait() do
    if getgenv().Settings.Enabled then
        local Notify = getsenv(game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Admin Commands"):WaitForChild("Admin Cmds Client")).AddNotification
        local Count = game.Players.LocalPlayer.PlayerGui.Main.Bottom.Inventory.Notification.Count
        if tonumber(Count.Text) >= getgenv().Settings.MaxiumumNotificationCount then
            Notify("Counter Reached "..getgenv().Settings.MaxiumumNotificationCount.." | Opening Inventory")
            game.Players.LocalPlayer.PlayerGui.Inventory.Enabled = true
            wait(getgenv().Settings.WaitTime_Inv)
            Notify("Waited: "..getgenv().Settings.WaitTimeUntilInventoryClose.."(s) | Closing Inventory")
            game.Players.LocalPlayer.PlayerGui.Inventory.Enabled = false
            wait(getgenv().Settings.Wait_Time_Check)
            Notify("Waited: "..getgenv().Settings.WaitTimeUntilNextCheck..)
        end
    end
end
