gem 'rspec', '=2.14.1'
require_relative '../SuperMarket.rb'
require 'rspec'

describe SuperMarket do

  let(:cart) {SuperMarket.new}

  it 'will return $3.50 with 1 bread, noodles, and coup can' do
    cart.scan(:soup)
    cart.scan(:bread)
    cart.scan(:noodles)
    cart.calculate_total.should eq(3.50)
  end

  it 'will return $1.00 with 1 bread' do
    cart.scan(:bread)
    cart.calculate_total.should eq(1.00)
  end

  it 'should add bread to the cart' do
    cart.scan(:bread, 3).length.should eq(3)
  end

  it 'should add noodles to the cart' do
    cart.scan(:noodles, 5).length.should eq(5)
  end

  it 'should add soup to the cart' do
    cart.scan(:soup, 2).length.should eq(2)
  end

  it 'should print cost of each item before printing total' do
    cart.scan(:soup, 2)
    cart.scan(:bread, 4)
    cart.scan(:noodles, 11)
    cart.calculate_total.should eq(13.50)
  end

  it 'should calculate the cost of apples as $2 per pound' do
    cart.scan(:apples, 3)
    cart.calculate_total.should eq(6.00)
  end
end

if warrior.feel.empty?
warrior.rest! if warrior.health < 70
warrior.walk!
else
warrior.attack!
end