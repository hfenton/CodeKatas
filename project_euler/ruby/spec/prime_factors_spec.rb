require 'spec_helper'

describe PrimeFactors do
    let(:prime_factors) { described_class.new }

    it 'should return false for the number 1' do
      expect(subject.is_prime?(1)).to eq(false)
    end

    it 'should return true for the number 2 ' do
      expect(prime_factors.is_prime?(2)).to eq(true)
      # prime_factors.is_prime?(2).should be_true
    end

    it 'should return true for the number 3 ' do
      expect(prime_factors.is_prime?(3)).to eq(true)
      # prime_factors.is_prime?(3).should be_true
    end

    it 'should return true for the number 4 ' do
      expect(prime_factors.is_prime?(4)).to eq(false)
      # prime_factors.is_prime?(4).should be_false
    end

    it 'should return true for the number 5 ' do
      expect(prime_factors.is_prime?(5)).to eq(true)
      # prime_factors.is_prime?(5).should be_true
    end

    it 'should return true for the number 6 ' do
      expect(prime_factors.is_prime?(6)).to eq(false)
      # prime_factors.is_prime?(6).should be_false
    end

    it 'should return true for the number 7 ' do
      expect(prime_factors.is_prime?(7)).to eq(true)
      # prime_factors.is_prime?(7).should be_true
    end

    it 'should return true for the number 8 ' do
      expect(prime_factors.is_prime?(8)).to eq(false)
      # prime_factors.is_prime?(8).should be_false
    end

    it 'should return true for the number 9 ' do
      expect(prime_factors.is_prime?(9)).to eq(false)
      # prime_factors.is_prime?(9).should be_false
    end

    it 'should return true for the number 10 ' do
      expect(prime_factors.is_prime?(10)).to eq(false)
      # prime_factors.is_prime?(10).should be_false
    end

    it 'should return true for the number 37 ' do
      expect(prime_factors.is_prime?(37)).to eq(true)
      # prime_factors.is_prime?(37).should be_true
    end

    it 'should return prime factors for the number 10' do
      expect(prime_factors.generate(10)).to eq([2,5])
      # prime_factors.generate(10).should eql([2,5])
    end

    it 'should return prime factors for the number 13195' do
      expect(prime_factors.generate(13195)).to eq([5,7,13,29])
      # prime_factors.generate(13195).should eql([5,7,13,29])
    end

    it 'should return prime factors for the number 330' do
      expect(prime_factors.generate(330)).to eq([2,3,5,11])
      # prime_factors.generate(330).should eql([2,3,5,11])
    end


    # new and does not work

    it 'should return prime factors for the number 8' do
      expect(prime_factors.factorize(8)).to eq([2,2,2])
      # prime_factors.factorize(8).should eql([2,2,2])
    end

    it 'should return prime factors for the number 9' do
      expect(prime_factors.factorize(9)).to eq([3,3])
      # prime_factors.factorize(9).should eql([3,3])
    end

    it 'should return prime factors for the number 330' do
      expect(prime_factors.factorize(330)).to eq([2,3,5,11])
      # prime_factors.factorize(330).should eql([2,3,5,11])
    end

    it 'should return prime factors for the number 147' do
      expect(prime_factors.factorize(147)).to eq([3,7,7])
      # prime_factors.factorize(147).should eql([3,7,7])
    end

    it 'should return prime factors for the number 13195' do
      expect(prime_factors.factorize(13195)).to eq([5,7,13,29])
      # prime_factors.factorize(13195).should eql([5,7,13,29])
    end

    # These do not work, yet
    it 'should do next prime number after 2' do
      prime_factors.find_next_prime_number(2).should eq(3)
    end


    # it 'should do next prime number after 10' do
    #   prime_factors.find_next_prime_number(7).should eq(11)
    # end
    #
    #
    # it 'should return prime factors for the number 8' do
    #   expect(prime_factors.new_factorize(8)).to eq([2,2,2])
    #   # prime_factors.new_factorize(8).should eql([2,2,2])
    # end

end
