require 'spec_helper'

describe LargestPrimeFactor do

  it 'should return true if given number 2 is a prime number' do
    described_class.is_prime_number?(2).should be_true
  end

  it 'should return true if given number 3 is a prime number' do
    described_class.is_prime_number?(3).should be_true
  end

  it 'should return true if given number 5 is a prime number' do
    described_class.is_prime_number?(5).should be_true
  end

  it 'should return true if given number 7 is a prime number' do
    described_class.is_prime_number?(7).should be_true
  end

  it 'should return true if given number 11 is a prime number' do
    described_class.is_prime_number?(11).should be_true
  end

  it 'should return true if given number 13 is a prime number' do
    described_class.is_prime_number?(13).should be_true
  end

  it 'should return true if given number 17 is a prime number' do
    described_class.is_prime_number?(17).should be_true
  end

  it 'should return false if given number 1 is not a prime number' do
    described_class.is_prime_number?(1).should be_false
  end

  it 'should return false if given number 4 is not a prime number' do
    described_class.is_prime_number?(4).should be_false
  end

  it 'should return false if given number 8 is not a prime number' do
    described_class.is_prime_number?(8).should be_false
  end

  it 'should return false if given number 9 is not a prime number' do
    described_class.is_prime_number?(9).should be_false
  end

  it 'should return false if given number 15 is not a prime number' do
    described_class.is_prime_number?(15).should be_false
  end

  it 'should spit out a list of prime numbers up to a given number' do
    described_class.list_prime_numbers_up_to(10).should eq([2,3,5,7])
  end

  it 'should spit out a list of possible prime numbers up to a given number' do
    described_class.get_primes_up_to(10).should eq([2,3,5,7])
  end

end


# The prime factors of 13195 are 5, 7, 13 and 29.
#
#     What is the largest prime factor of the number 600851475143 ?