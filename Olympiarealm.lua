local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

Window = Rayfield:CreateWindow({
    Name = "Olympia",
    LoadingTitle = "Pacote Interface Suite",
    LoadingSubtitle = "by Paquito",
    ConfigurationSaving = {
        Enabled = true,
        FileName = "Tiny Hub",
    },
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
        Title = "Pacote's Hub",
        Subtitle = "Key System",
        Note = "Pon la password pibe",
        Key = "hola"
    }
    })

MainTab = Window:CreateTab("Main")
TpTab = Window:CreateTab("Tps")

getgenv().autotrain = true;
getgenv().autoheal = true;

function autodrink()
    spawn(function()
        while getgenv().autoheal == true do
            game:GetService("ReplicatedStorage").Remotes.EnergyFatigue.ServerRegen:FireServer() -- Curar Energy
            wait()
    end)
end

function autotrainthem() --Auto buy Face Steak
    spawn(function()
        while getgenv().autotrain == true do
            for i,v in pairs(game:GetService("Workspace").Maquinas.Peck:GetDescendants()) do
                if v.Name == "SupinoSeat" then
                    fireproximityprompt(v.ProximityPrompt)
                end
            end
            wait()
            for i,v in pairs(game:GetService("Workspace").Maquinas.Back:GetDescendants()) do
                if v.Name == "RemadaBarra" then
                    fireproximityprompt(v.Seat.ProximityPrompt) -- Poner la localizacion del jugador como la del banco de press de banca
                end
            end
            wait()
            for i,v in pairs(game:GetService("Workspace").Maquinas.Triceps:GetDescendants()) do
                if v.Name == "ExtTriceps" then
                    fireproximityprompt(v.Seat.ProximityPrompt) -- Poner la localizacion del jugador como la del banco de press de banca
                end
            end
            wait()
            for i,v in pairs(game:GetService("Workspace").Maquinas.Biceps:GetDescendants()) do
                if v.Name == "RoscaDcomBarra" then
                    fireproximityprompt(v.Seat.ProximityPrompt) -- Poner la localizacion del jugador como la del banco de press de banca
                end
            end
            wait()
            for i,v in pairs(game:GetService("Workspace").Maquinas.Core:GetDescendants()) do
                if v.Name == "AbMaquina" then
                    fireproximityprompt(v.Seat.ProximityPrompt) -- Poner la localizacion del jugador como la del banco de press de banca
                end
            end
            wait()
            for i,v in pairs(game:GetService("Workspace").Maquinas.Leg:GetDescendants()) do
                if v.Name == "Deadlift" then
                    fireproximityprompt(v.Seat.ProximityPrompt) -- Poner la localizacion del jugador como la del banco de press de banca
                end
            end
            wait()
        end
    end)
end

function getallweights() --Auto collect pumpkins
    spawn(function()
        local args = {
            [1] = game:GetService("Players").LocalPlayer
        }
        
        game:GetService("ReplicatedStorage").BuyWeights.BuyFiveHundred:FireServer(unpack(args))
        local args = {
            [1] = game:GetService("Players").LocalPlayer
        }
        
        game:GetService("ReplicatedStorage").BuyWeights.BuyFiveTon:FireServer(unpack(args))
        local args = {
            [1] = game:GetService("Players").LocalPlayer
        }
        
        game:GetService("ReplicatedStorage").BuyWeights.BuyHalfTon:FireServer(unpack(args))
        local args = {
            [1] = game:GetService("Players").LocalPlayer
        }
        
        game:GetService("ReplicatedStorage").BuyWeights.BuyTenTon:FireServer(unpack(args))
        local args = {
            [1] = game:GetService("Players").LocalPlayer
        }
        
        game:GetService("ReplicatedStorage").BuyWeights.BuyOneTon:FireServer(unpack(args))
        local args = {
            [1] = game:GetService("Players").LocalPlayer
        }
        
        game:GetService("ReplicatedStorage").BuyWeights.BuyTwentyFiveTon:FireServer(unpack(args))
        local args = {
            [1] = game:GetService("Players").LocalPlayer
        }
        
        game:GetService("ReplicatedStorage").BuyWeights.BuyTwoFifty:FireServer(unpack(args))
        local args = {
            [1] = game:GetService("Players").LocalPlayer
        }
        
        game:GetService("ReplicatedStorage").BuyWeights.BuyTwoFiveTon:FireServer(unpack(args))
    end)
end

MainTab:CreateToggle({
	Name = "Auto Train",
	CurrentValue = false,
	Callback = function(Value)
        getgenv().autotrain = Value
        autotrainthem()
	end,
})
MainTab:CreateToggle({
	Name = "Auto Heal Energy",
	CurrentValue = false,
	Callback = function(Value)
        getgenv().autoheal = Value
        autodrink()
	end,
})

MainTab:CreateButton({
	Name = "Get All Weights",
	Callback = function()
        getallweights()
	end,
})

MainTab:CreateParagraph({Title = "Warning!", Content = "No recomendable usar en publicos."})

TpTab:CreateButton({
	Name = "Tp to Chest",
	Callback = function()
        for i,v in pairs(game:GetService("Workspace").Maquinas.Peck:GetDescendants()) do
            if v.Name == "SupinoSeat" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame -- Poner la localizacion del jugador como la del banco de press de banca
                wait()
                game:GetService("ReplicatedStorage").Pesos.AddPesos.AddTwentyFiveTon:FireServer() -- Equipar pesa de 25T
                game:GetService("ReplicatedStorage").Pesos.AddPesos.AddTwentyFiveTon:FireServer() -- Equipar pesa de 25T
                game:GetService("ReplicatedStorage").Pesos.AddPesos.AddTwentyFiveTon:FireServer() -- Equipar pesa de 25T
                game:GetService("ReplicatedStorage").Pesos.AddPesos.AddTwentyFiveTon:FireServer() -- Equipar pesa de 25T
                game:GetService("ReplicatedStorage").Pesos.AddPesos.AddTwentyFiveTon:FireServer() -- Equipar pesa de 25T
                game:GetService("ReplicatedStorage").Pesos.AddPesos.AddTwentyFiveTon:FireServer() -- Equipar pesa de 25T
            end
        end
	end,
})
TpTab:CreateButton({
	Name = "Tp to Back",
	Callback = function()
        for i,v in pairs(game:GetService("Workspace").Maquinas.Back:GetDescendants()) do
            if v.Name == "RemadaBarra" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Seat.CFrame -- Poner la localizacion del jugador como la del banco de press de banca
                wait()
                game:GetService("ReplicatedStorage").Pesos.AddPesos.AddTwentyFiveTon:FireServer() -- Equipar pesa de 25T
                game:GetService("ReplicatedStorage").Pesos.AddPesos.AddTwentyFiveTon:FireServer() -- Equipar pesa de 25T
                game:GetService("ReplicatedStorage").Pesos.AddPesos.AddTwentyFiveTon:FireServer() -- Equipar pesa de 25T
                game:GetService("ReplicatedStorage").Pesos.AddPesos.AddTwentyFiveTon:FireServer() -- Equipar pesa de 25T
                game:GetService("ReplicatedStorage").Pesos.AddPesos.AddTwentyFiveTon:FireServer() -- Equipar pesa de 25T
                game:GetService("ReplicatedStorage").Pesos.AddPesos.AddTwentyFiveTon:FireServer() -- Equipar pesa de 25T
            end
        end
	end,
})
TpTab:CreateButton({
	Name = "Tp to Triceps",
	Callback = function()
        for i,v in pairs(game:GetService("Workspace").Maquinas.Triceps:GetDescendants()) do
            if v.Name == "ExtTriceps" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Seat.CFrame -- Poner la localizacion del jugador como la del banco de press de banca
                wait()
                game:GetService("ReplicatedStorage").Pesos.AddPesos.AddTwentyFiveTon:FireServer() -- Equipar pesa de 25T
                game:GetService("ReplicatedStorage").Pesos.AddPesos.AddTwentyFiveTon:FireServer() -- Equipar pesa de 25T
                game:GetService("ReplicatedStorage").Pesos.AddPesos.AddTwentyFiveTon:FireServer() -- Equipar pesa de 25T
                game:GetService("ReplicatedStorage").Pesos.AddPesos.AddTwentyFiveTon:FireServer() -- Equipar pesa de 25T
                game:GetService("ReplicatedStorage").Pesos.AddPesos.AddTwentyFiveTon:FireServer() -- Equipar pesa de 25T
                game:GetService("ReplicatedStorage").Pesos.AddPesos.AddTwentyFiveTon:FireServer() -- Equipar pesa de 25T
            end
        end
	end,
})
TpTab:CreateButton({
	Name = "Tp to Biceps",
	Callback = function()
        for i,v in pairs(game:GetService("Workspace").Maquinas.Biceps:GetDescendants()) do
            if v.Name == "RoscaDcomBarra" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Seat.CFrame -- Poner la localizacion del jugador como la del banco de press de banca
                wait()
                game:GetService("ReplicatedStorage").Pesos.AddPesos.AddTwentyFiveTon:FireServer() -- Equipar pesa de 25T
                game:GetService("ReplicatedStorage").Pesos.AddPesos.AddTwentyFiveTon:FireServer() -- Equipar pesa de 25T
                game:GetService("ReplicatedStorage").Pesos.AddPesos.AddTwentyFiveTon:FireServer() -- Equipar pesa de 25T
                game:GetService("ReplicatedStorage").Pesos.AddPesos.AddTwentyFiveTon:FireServer() -- Equipar pesa de 25T
                game:GetService("ReplicatedStorage").Pesos.AddPesos.AddTwentyFiveTon:FireServer() -- Equipar pesa de 25T
                game:GetService("ReplicatedStorage").Pesos.AddPesos.AddTwentyFiveTon:FireServer() -- Equipar pesa de 25T
            end
        end
	end,
})
TpTab:CreateButton({
	Name = "Tp to Abs",
	Callback = function()
        for i,v in pairs(game:GetService("Workspace").Maquinas.Core:GetDescendants()) do
            if v.Name == "AbMaquina" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Seat.CFrame -- Poner la localizacion del jugador como la del banco de press de banca
                wait()
                game:GetService("ReplicatedStorage").Pesos.AddPesos.AddTwentyFiveTon:FireServer() -- Equipar pesa de 25T
                game:GetService("ReplicatedStorage").Pesos.AddPesos.AddTwentyFiveTon:FireServer() -- Equipar pesa de 25T
                game:GetService("ReplicatedStorage").Pesos.AddPesos.AddTwentyFiveTon:FireServer() -- Equipar pesa de 25T
                game:GetService("ReplicatedStorage").Pesos.AddPesos.AddTwentyFiveTon:FireServer() -- Equipar pesa de 25T
                game:GetService("ReplicatedStorage").Pesos.AddPesos.AddTwentyFiveTon:FireServer() -- Equipar pesa de 25T
                game:GetService("ReplicatedStorage").Pesos.AddPesos.AddTwentyFiveTon:FireServer() -- Equipar pesa de 25T
            end
        end
	end,
})
TpTab:CreateButton({
	Name = "Tp to Legs",
	Callback = function()
        for i,v in pairs(game:GetService("Workspace").Maquinas.Leg:GetDescendants()) do
            if v.Name == "Deadlift" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Seat.CFrame -- Poner la localizacion del jugador como la del banco de press de banca
                wait()
                game:GetService("ReplicatedStorage").Pesos.AddPesos.AddTwentyFiveTon:FireServer() -- Equipar pesa de 25T
                game:GetService("ReplicatedStorage").Pesos.AddPesos.AddTwentyFiveTon:FireServer() -- Equipar pesa de 25T
                game:GetService("ReplicatedStorage").Pesos.AddPesos.AddTwentyFiveTon:FireServer() -- Equipar pesa de 25T
                game:GetService("ReplicatedStorage").Pesos.AddPesos.AddTwentyFiveTon:FireServer() -- Equipar pesa de 25T
                game:GetService("ReplicatedStorage").Pesos.AddPesos.AddTwentyFiveTon:FireServer() -- Equipar pesa de 25T
                game:GetService("ReplicatedStorage").Pesos.AddPesos.AddTwentyFiveTon:FireServer() -- Equipar pesa de 25T
            end
        end
	end,
})