require 'spec_helper'

describe Multiples3And5 do

    it 'should be a multiple of 3 returns false' do
      described_class.is_multiple_of_3?(10).should be_false
    end

    it 'should be a multiple of 3 returns true' do
      described_class.is_multiple_of_3?(9).should be_true
    end

    it 'should be a multiple of 5 returns false' do
      described_class.is_multiple_of_5?(9).should be_false
    end

    it 'should be a multiple of 5 returns true' do
      described_class.is_multiple_of_5?(10).should be_true
    end

    it 'should add multiples of 3 and 5 below 10' do
      described_class.sum_multiple_of_3_and_5_below(10).should eq(23)
    end

    it 'should add multiples of 3 and 5 below 25' do
      subject.sum_multiple_of_3_and_5_below(25).should eq(143)
    end

    it 'should add multiples of 3 and 5 below 1000' do
      subject.sum_multiple_of_3_and_5_below(1000).should eq(233168)
    end
end