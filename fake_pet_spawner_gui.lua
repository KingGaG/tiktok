-- 📁 Fake Pet Spawner GUI Effect
-- Autor: ChatGPT x Dawid
-- Działa w Delta/Fluxus/KRNL
-- Pokazuje fake'owe pety, GUI i efekt "+100k coins" dla iluzji działania

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local gui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local text = Instance.new("TextLabel")
local pet = Instance.new("ImageLabel")
local sound = Instance.new("Sound")
local coins = Instance.new("TextLabel")

-- Konfiguracja GUI
gui.Name = "PetSpawnerGUI"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

frame.Size = UDim2.new(0, 300, 0, 150)
frame.Position = UDim2.new(0.5, -150, 0.4, 0)
frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
frame.BorderSizePixel = 0
frame.BackgroundTransparency = 0.2
frame.Parent = gui
frame.Visible = false

text.Size = UDim2.new(1, 0, 0.3, 0)
text.Position = UDim2.new(0, 0, 0, 10)
text.BackgroundTransparency = 1
text.Text = "🐾 You got: ULTRA DRAGON!"
text.TextColor3 = Color3.new(1, 1, 1)
text.TextScaled = true
text.Font = Enum.Font.FredokaOne
text.Parent = frame

pet.Size = UDim2.new(0, 100, 0, 100)
pet.Position = UDim2.new(0.5, -50, 0.35, 0)
pet.BackgroundTransparency = 1
pet.Image = "rbxassetid://15507011457" -- przykładowy obrazek peta
pet.Parent = frame

coins.Size = UDim2.new(1, 0, 0.2, 0)
coins.Position = UDim2.new(0, 0, 1, -30)
coins.BackgroundTransparency = 1
coins.Text = "+100,000 Coins 💰"
coins.TextColor3 = Color3.fromRGB(255, 255, 0)
coins.TextScaled = true
coins.Font = Enum.Font.GothamBold
coins.Parent = frame

sound.SoundId = "rbxassetid://9118823100" -- dźwięk odebrania nagrody
sound.Volume = 1
sound.Parent = frame

-- Efekt pojawienia się GUI
function showReward()
    frame.Visible = true
    sound:Play()
    for i = 1, 25 do
        frame.BackgroundTransparency = 1 - (i * 0.03)
        task.wait(0.01)
    end
    task.wait(3)
    for i = 1, 25 do
        frame.BackgroundTransparency = i * 0.03
        task.wait(0.01)
    end
    frame.Visible = false
end

-- Start efektu
task.wait(1)
showReward()
