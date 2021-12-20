require './lib/check_error'

RSpec.describe CheckError do
  describe '#Check quit' do
    subject { CheckError.new.check_menu_user_value?('q') }
    it { is_expected.to eq true }
  end

  describe '#Check in range 1' do
    subject { CheckError.new.check_menu_user_value?('1') }
    it { is_expected.to eq true }
  end

  describe '#Check in range 6' do
    subject { CheckError.new.check_menu_user_value?('6') }
    it { is_expected.to eq true }
  end

  describe '#Check out of range value' do
    subject { CheckError.new.check_menu_user_value?('-1') }
    it { is_expected.to eq false }
  end

  describe '#Check out of range random string' do
    subject { CheckError.new.check_menu_user_value?('out of range') }
    it { is_expected.to eq false }
  end
end
