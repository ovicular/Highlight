local Highlight = {}
Highlight.__index = Highlight

function Highlight.create(Object, Props)
	assert(typeof(Object) == "Instance", "Instance must be an Instance")
	assert(type(Props) == "table", "Props must be a table")

	local newHightlight = Instance.new("Highlight")
	newHightlight.Parent = Object

	for Index, Property in next, Props do
		newHightlight[Index] = Property
	end

	return setmetatable({
		Object = newHightlight,
	}, Highlight)
end

function Highlight:Destroy()
	return self.Object:Destroy()
end

function Highlight:Edit(Props)
	for Index, Property in next, Props do
		self.Object[Index] = Property
	end
end

return Highlight
