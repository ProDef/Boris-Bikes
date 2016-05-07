require_relative "bike"
class DockingStation

	attr_reader :bike

def initialize
	@bikes = []
end

def release_bike
	@bikes.pop unless empty?
end

def dock(bike)
	@bikes << bike unless full?
end


end

private 

def full?
	fail "at capacity" if @bikes.count >= 20
end

def empty?
	fail "No bikes available" if @bikes.empty?
end
