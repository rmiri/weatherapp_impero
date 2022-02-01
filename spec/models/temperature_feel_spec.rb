require 'rails_helper'

RSpec.describe TemperatureFeel, type: :model do
  subject { described_class.create( cold: 10, warm: 20, hot: 30 ) } 
  # subject { described_class.create(10,20,30) } 

  it 'works' do
    expect { subject }.to change{TemperatureFeel.count}.by(1)
  end

  describe '#temperature_feeling' do
    let(:temperature_feel) { TemperatureFeel.create(cold:10,warm:20,hot:30) }

    before { temperature_feel }

    it 'returns hi' do
      expect(described_class.temperature_feeling(15)).to eq('warm')
    end
  end

  # context "when the temperatures are out of order" do
  #   subject { described_class.create(cold:50,warm:20,hot:30) } 
    
  #   it 'does not work' do
  #     expect { subject }.not_to change{TemperatureFeel.count}
  #   end
  # end
  
end
