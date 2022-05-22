
# Highlight


## Loader
```lua
local Highlight = loadstring(game:HttpGet("https://raw.githubusercontent.com/ovicular/Highlight/main/Main.lua"))()
```

## Usage

### Adding an instance

```lua
Highlight.create(Object, Properties)
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `Object` | `Instance` | **Required**. The object that you want to be highlighted |

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `Properties` | `Table` | Table of properties that you want applied to the Highlight Instance |


### Destroying a Highlight
#### Destroys the highlight (Make sure to disconnect connections using the Cleanup() function!)
```lua
Highlight:Destroy()
```

### Editing the properties of a Highlight

```lua
Highlight:Edit(Object, Properties)
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `Properties` | `Table` | Table of properties that you want applied to the Highlight Instance |

### Adding connections

```lua
Highlight:AddConnection(Connection)
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `Connection` | `function` | Adds a connection relative to the highlight, makes it easier to disconnect later on |

### Cleaning up connections
#### Disconnects all connections associated to the highlight
```lua
Highlight:Cleanup()
```

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
