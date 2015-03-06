require 'spec_helper'

describe Door do

  it 'should initialize state to closed' do
    expect(subject.state).to eq(:closed)
  end

  it 'should allow state change to open' do
    subject.state = :open
    expect(subject.state).to eq(:open)
  end

end