require 'weather'

describe Weather do
  weather = Weather.new

  describe '#weather' do
    it "should return true to stormy?" do
      allow(weather).to receive(:rand).and_return(0)
      expect(weather.stormy?).to eq true
    end

    it "should return false to stormy?" do
      allow(weather).to receive(:rand).and_return(1)
      expect(weather.stormy?).to eq false
    end
  end
end
