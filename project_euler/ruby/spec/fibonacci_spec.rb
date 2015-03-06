require 'spec_helper'

describe Fibonacci do

  it 'should return terms less than 10' do
    described_class.get_terms_less_than(10).should eq([1,2,3,5,8])
  end

  it 'should return terms less than 20' do
    described_class.get_terms_less_than(20).should eq([1,2,3,5,8,13])
  end


  it 'should return terms less than 60' do
    described_class.get_terms_less_than(60).should eq([1,2,3,5,8,13,21,34,55])
  end

  it 'should return sum of terms less than 10' do
    described_class.sum_of_terms_less_than(10).should eq(19)
  end


  it 'should return sum of terms less than 30' do
    described_class.sum_of_terms_less_than(30).should eq(53)
  end


  it 'should return sum of even terms less than 10' do
    described_class.sum_of_even_terms_less_than(10).should eq(10)
  end


  it 'should return sum of even terms less than 60' do
    described_class.sum_of_even_terms_less_than(60).should eq(44)
  end


  it 'should return sum of even terms less than 4000000' do
    described_class.sum_of_even_terms_less_than(4000000).should eq(4613732)
  end

end