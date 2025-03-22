while true do

	if _G.ConnectionAutoFishLoot then
		game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Fishing_FishermanClaim"):InvokeServer()
	end

	task.wait(0.1)
end
