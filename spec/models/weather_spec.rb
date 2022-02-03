require 'rails_helper'

RSpec.describe Weather, type: :model do
  subject { described_class }

  describe '#temperature_feeling' do
    let(:temperature_feel) { TemperatureFeel.create(cold: 10, warm: 20, hot: 30) }
    
    before { temperature_feel }

    it 'works' do
      expect(subject.temperature_feeling(15)).to eq('warm')
    end
  end

  
end
