require "docking_station"

describe DockingStation do
	

	it { is_expected.to respond_to :release_bike}
	it { is_expected.to respond_to(:dock).with(1).argument }
	it { is_expected.to respond_to (:bike)}

	it "releases a working bike" do 
		bike = Bike.new
		subject.dock(bike)
		expect(subject.release_bike).to eq bike 
	end

	it "docks something" do  
		bike = Bike.new
		expect(subject.dock(bike)).to eq bike
	end

	it "returns docked bike" do 
		bike = Bike.new
		subject.dock(bike)
		expect(subject.bike).to eq bike
	end

	it "raises an error for no bikes" do
		expect { subject.release_bike }.to raise_error("No bikes available")
	end

end