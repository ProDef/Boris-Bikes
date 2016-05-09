class Bike

attr_reader :bike

def working?
	@bike = fix
end

def report_broken
	@broken = true
end

def broken?
	@broken
end

def fix
	@broken = false
end

end