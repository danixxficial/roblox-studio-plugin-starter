-- MainScript.lua
-- A simple Roblox Studio plugin that adds a button to create a part in the Workspace.

-- Step 1: Create a custom toolbar in the Plugins tab
local toolbar = plugin:CreateToolbar("My First Plugin") 
-- "My First Plugin" is the name of the toolbar that will appear in Studio

-- Step 2: Add a button to that toolbar
local button = toolbar:CreateButton(
    "Create Part",                         -- Name (tooltip and hover text)
    "Creates a part in the Workspace",     -- Description (tooltip)
    "rbxassetid://4458901886"              -- Icon (optional, Roblox image ID)
)

-- Step 3: Connect the button to a function
-- This function runs each time the button is clicked
button.Click:Connect(function()
    -- Create a new Part
    local part = Instance.new("Part")
    part.Size = Vector3.new(4, 1, 2)        -- Set the size of the part
    part.Position = Vector3.new(0, 5, 0)    -- Place it above the baseplate
    part.Anchored = true                    -- Prevent it from falling
    part.Name = "PluginPart"                -- Name it for clarity
    part.Parent = workspace                 -- Add it to the Workspace

    print("Part created by plugin!")        -- Output confirmation in the log
end)




--🧪 What This Plugin Does
--When loaded in Roblox Studio:

--A new button called "Create Part" appears in the Plugins tab.

--Clicking this button will instantly create a Part in the Workspace.

--The created part is 4x1x2 in size, anchored, and placed at position (0, 5, 0).

--The plugin prints "Part created by plugin!" in the Output panel.
