require "docking_station"

describe DockingStation do
	

	it { is_expected.to respond_to :release_bike}
	it { is_expected.to respond_to(:dock).with(1).argument }
	it { is_expected.to respond_to :bike}

	describe "#release bike" do
		it "releases a working bike" do 
			bike = Bike.new
			subject.dock(bike)
			expect(subject.release_bike).to eq bike 
		end
end
	
	describe "#dock" do 
		it "docks something" do  
			bike = Bike.new
			subject.dock(bike)
			expect(subject.bike).to eq @bike
		end
end

	describe "#error empty capacity" do 
		it "raises an error for no bikes" do
			expect { subject.release_bike }.to raise_error("No bikes available")
		end

		it "raises an error if at capacity" do 
			subject.capacity.times { subject.dock Bike.new}
			expect { subject.dock Bike.new }.to raise_error("at capacity")
		end
end

	describe "#initialization" do 
		subject { DockingStation.new }
		let(:bike) { Bike.new }
		it "defaults capacity" do
			described_class::DEFAULT_CAPACITY.times do 
			subject.dock(bike)
		end
			expect{ subject.dock(bike) }.to raise_error ('at capacity')
	end
end

end






