class FoodItem
  attr_accessor :name, :uom, :price
  def initialize(name, uom, price)
    @name = name
    @uom = uom
    @price = price
  end
end

class SuperMarket

  def initialize(opts = [])
    #Initialize goes here
    #You either have the option of passing in the values when calling the function
    #or you can initialize them when you create the object.
    # @opts = parse_opts(opts)
    @food_info = get_food_info
    @items = []
  end

  def get_food_info
    info = []
    bread = FoodItem.new(:bread, 'loaf', 1.0)
    noodles = FoodItem.new(:noodles, 'package', 0.5)
    soup = FoodItem.new(:soup, 'can', 2.0)
    apples = FoodItem.new(:apples, 'pound', 2.0)
    info << bread << noodles << soup << apples
    info
  end

  def get_food_item(item_name)
    @food_info.each{ |food|
        return food if food.name == item_name
    }
  end

  def scan(item, quantity = 1)
    return @items if quantity == 0
    food_item = get_food_item(item)
    # if @items[item].nil?
    #   @items[item] = quantity
    # else
    #   @items[item] = @items[item] + quantity
    # end
    @items << food_item
    scan(item, quantity - 1)
  end

  def calculate_total
    total = 0.0
    @items.each { |item |
      puts "#{item.name}  $#{item.price}/#{item.uom}"
      @food_info
      total += item.price
      # total += cost_of_bread(quantity) if item == :bread
      # total += cost_of_noodles(quantity) if item == :noodles
      # total += cost_of_soup(quantity) if item == :soup
      # total += cost_of_apples(quantity) if item == :apples
    }
    puts "Total:  $#{total}"
    puts '------------------------------------------'
    total
  end
  #
  # def calculateCost(bread, noodles, soup_cans)
  #   total_price = cost_of_bread(bread) + cost_of_noodles(noodles) + cost_of_soup(soup_cans)
  #   total_price
  # end
  #
  # def cost_of_bread(quantity)
  #   cost = 1.00 * quantity
  #   puts "Bread:  $1.00/loaf \n\t#{quantity} #{'loaf' if quantity == 1}#{'loaves' if quantity > 1} -\t#{cost}"
  #   return cost
  # end
  #
  # def cost_of_noodles(quantity)
  #   cost = 0.50 * quantity
  #   puts "Noodles:  $0.50/package \n\t#{quantity} #{'package of noodles' if quantity == 1}#{'packages of noodles' if quantity > 1} -\t#{cost}"
  #   return cost
  # end
  #
  # def cost_of_soup(quantity)
  #   cost = 2.00 * quantity
  #   puts "Can of soup:  $2.00/can \n\t#{quantity} #{'can of soup' if quantity == 1}#{'cans of soup' if quantity > 1} -\t#{cost}"
  #   return cost
  # end
  #
  # def cost_of_apples(quantity)
  #   cost = 2.00 * quantity
  #   puts "Apples:  $2.00/pound \n\t#{quantity} #{'pound of apples' if quantity == 1}#{'pounds of apples' if quantity > 1} -\t#{cost}"
  #   return cost
  # end

  # def parse_opts(opts)
  #   []
  # end
end
