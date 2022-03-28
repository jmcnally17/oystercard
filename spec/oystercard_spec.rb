require_relative '../lib/oystercard'

describe Oystercard do
  it 'starts with a balance of 0.0' do
    expect(subject.balance).to eq 0.0
  end

  it 'should add an amount to balance.' do
    expect { subject.top_up(30) }.to change { subject.balance }.by(30.0)
  end
end

