require 'spec_helper'

describe DoorsEngine do

  it 'should initialize all_doors to 100' do
    expect(subject.all_doors.count).to eq(100)
  end


  it 'should have all_doors closed after init' do
    expect(subject.count_of_doors_with_state(:closed)).to eq(100)
  end

  it 'should toggle all_doors to open after first pass' do
    subject.toggle(1)
    expect(subject.count_of_doors_with_state(:open)).to eq(100)
  end

  it 'should toggle all_doors after second pass' do
    subject.toggle(2)
    expect(subject.count_of_doors_with_state(:open)).to eq(50)
  end

  it 'should toggle all_doors after third pass' do
    subject.toggle(3)
    expect(subject.count_of_doors_with_state(:open)).to eq(33)
  end

  it 'should toggle all_doors after final pass' do
    subject.toggle(100)
    expect(subject.count_of_doors_with_state(:open)).to eq(1)
  end

  it 'should toggle all_doors loop' do
    subject.toggle_all_doors
    expect(subject.count_of_doors_with_state(:open)).to eq(10)
  end
end