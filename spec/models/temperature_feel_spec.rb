require 'rails_helper'

RSpec.describe TemperatureFeel, type: :model do
  subject { described_class.create(cold:10,warm:20,hot:30) } 
  # subject { described_class.create(10,20,30) } 
  # subject { described_class.create(10,20,30) } 

  it 'works' do
    expect { subject }.to change{TemperatureFeel.count}.from(0).to(1)
  end

  context "when the temperatures are out of order" do
    subject { described_class.create(cold:50,warm:20,hot:30) } 
    
    it 'does not work' do
      expect { subject }.not_to change{TemperatureFeel.count}
    end
  end
  
end
