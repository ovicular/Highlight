local Highlight = {}
Highlight.__index = Highlight

function Highlight.create(Object, Props)
	assert(typeof(Object) == "Instance", "Instance must be an Instance")
	assert(type(Props) == "table", "Props must be a table")

	local newHighlight = Instance.new("Highlight")
	newHighlight.Parent = Object

	for Index, Property in next, Props do
		newHighlight[Index] = Property
	end

	return setmetatable({
		Object = newHighlight,
	}, Highlight)
end

function Highlight.bulk(Objects, Props)
	for _, Object in next, Objects do
		Highlight.create(Object, Props)
	end
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
