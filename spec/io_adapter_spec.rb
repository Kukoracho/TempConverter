require './lib/io_adapter'

RSpec.describe IOAdapter do
  $stdin = File.open('./test-data/io_test_data.txt')

  describe '#Choose 5' do
    subject { IOAdapter.new.convert_choose }
    it { is_expected.to eq '5' }
  end

  describe '#Choose q' do
    subject { IOAdapter.new.convert_choose }
    it { is_expected.to eq 'q' }
  end
end
