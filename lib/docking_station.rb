require_relative "bike"
class DockingStation
	
	DEFAULT_CAPACITY = 20

	attr_reader :bike

def initialize
	@bikes = []
	@capacity = DEFAULT_CAPACITY
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
	fail "at capacity" if @bikes.count >= @capacity
end

def empty?
	fail "No bikes available" if @bikes.empty?
end
