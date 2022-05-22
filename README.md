
# Highlight


## Loader
```lua
local Highlight = loadstring(game:HttpGet("https://raw.githubusercontent.com/ovicular/Highlight/main/Main.lua"))()
```

## Usage

#### Adding an instance

```lua
Highlight.create(Object, Properties)
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `Object` | `Instance` | **Required**. The object that you want to be highlighted |

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `Properties` | `Table` | Table of properties that you want applied to the Highlight Instance |


#### Destroying a Highlight
```lua
Highlight:Destroy()
```

#### Editing the properties of a Highlight

```lua
Highlight:Edit(Object, Properties)
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `Properties` | `Table` | Table of properties that you want applied to the Highlight Instance |

## Example

```lua
-- Loading the module
local Highlight = loadstring(game:HttpGet("https://raw.githubusercontent.com/ovicular/Highlight/main/Main.lua"))()

-- Creating the module
local newHighlight = Highlight.create(game:GetService("Players").LocalPlayer.Character, {
	FillColor = Color3.fromRGB(30,30,30),
	OutlineColor = Color3.fromRGB(150,150,150),
})

task.wait(3)

-- Changing colors of highlight
newHighlight:Edit({
    FillColor = Color3.fromRGB(0, 30, 0),
	OutlineColor = Color3.fromRGB(0, 50, 180),
})

task.wait(3)

-- Destroying the highlight
newHighlight:Destroy()
```
