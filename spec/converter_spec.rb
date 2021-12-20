require './lib/converter'

RSpec.describe Converter do
  describe '#Convert celsius to kelvin' do
    subject { Converter.new(1, 123).convert }
    it { is_expected.to eq 396.15 }
  end

  describe '#Convert celsius to fahrenheit' do
    subject { Converter.new(2, 123).convert }
    it { is_expected.to eq 253.4 }
  end

  describe '#Convert kelvin to celsius' do
    subject { Converter.new(3, 123).convert }
    it { is_expected.to eq(-150.15) }
  end

  describe '#Convert kelvin to fahrenheit' do
    subject { Converter.new(4, 123).convert }
    it { is_expected.to eq(-238.27) }
  end

  describe '#Convert fahrenheit to celsius' do
    subject { Converter.new(5, 123).convert }
    it { is_expected.to eq 50.556 }
  end

  describe '#Convert fahrenheit to kelvin' do
    subject { Converter.new(6, 123).convert }
    it { is_expected.to eq 323.706 }
  end

  describe '#Error convert' do
    subject { Converter.new(7, 123).convert }
    it { is_expected.to eq nil }
  end
end
