while true do
    if _G.ConnectionAutoFruit then
        local args = {
            [1] = "befd835b56834f7d941ff25fa1925d42",
            [2] = 1
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Fruits: Consume"):InvokeServer(unpack(args))
        
        
        local args = {
            [1] = "92fad527263845fd8015201110ca3098",
            [2] = 1
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Fruits: Consume"):InvokeServer(unpack(args))
        
        
        local args = {
            [1] = "725c8b2a5f8f4d158f9d1f73e30a70b7",
            [2] = 1
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Fruits: Consume"):InvokeServer(unpack(args))
        
        local args = {
            [1] = "aa20fa48f5ed4749ba6891393e314f29",
            [2] = 1
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Fruits: Consume"):InvokeServer(unpack(args))
        
        local args = {
            [1] = "fbc5688ee55448cdbc84d68a60d8f3f1",
            [2] = 1
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Fruits: Consume"):InvokeServer(unpack(args))
        
        local args = {
            [1] = "97a7ab77cf224ff3932e08cde20c357b",
            [2] = 1
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Fruits: Consume"):InvokeServer(unpack(args))
    end
    task.wait(0.1)
end
