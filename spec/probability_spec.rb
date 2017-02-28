require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe 'Probability for Integer' do
  it 'returns true when P=1' do
    expect(1.in(1)).to be_truthy
  end

  it 'returns false when P=0' do
    expect(0.in(1)).to be_falsey
  end

  it 'returns false when 3.in 0' do
    expect(3.in(0)).to be_falsey
  end

  context 'with blocks' do
    it 'yields the block for 1.in(1)' do
      expect { |b| 1.in(1, &b) }.to yield_with_no_args
    end

    it 'does not yield the block for 0.in(1)' do
      expect { |b| 0.in(1, &b) }.to_not yield_with_no_args
    end
  end
end
