require_relative '../lib/storage'

describe Storage do
  let(:storage) { Storage.new }

  describe '#set_value' do
    context 'when it did not have a value set' do
      it 'sets the value' do
        storage.set_value('some key', 'some value')
        expect(storage.get_value('some key')).to eq('some value')
      end
    end

    context 'when it had a value set' do
      before do
        storage.set_value('some key', 'value1')
      end

      it 'replaces the value' do
        storage.set_value('some key', 'value2')
        expect(storage.get_value('some key')).to eq('value2')
      end
    end
  end

  describe '#get_value' do
    context 'when it does not have a value set' do
      it 'returns nil' do
        expect(storage.get_value('some key')).to be_nil
      end
    end

    context 'when it has a value set' do
      before do
        storage.set_value('some key', 'some value')
      end

      it 'returns the value' do
        expect(storage.get_value('some key')).to eq('some value')
      end
    end
  end
end