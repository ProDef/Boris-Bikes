require "bike"

describe Bike do  

	it {is_expected.to respond_to :working?}
	it {is_expected.to respond_to :bike }



	describe "broken bike" do 
		it "allows you to report broken bikes" do 
			Bike.new 
			subject.report_broken
			expect(subject.broken?).to eq true
		end
	end

end