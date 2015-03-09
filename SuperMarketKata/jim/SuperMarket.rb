
class Item
  attr_accessor :name, :uom, :price
  def initialize name, uom, price
    @name = name
    @uom = uom
    @price = price
  end

end

class SuperMarket

  def initialize

    @total = 0

    @itemList = []
    @itemList << Item.new("bread", "each", 1)
    @itemList << Item.new("noodles", "each", 0.5)
    @itemList << Item.new("soupcan", "each", 2)
    @itemList << Item.new("apples", "pound", 2)
  end

  def calculateCost(itemName, quantity = 1.0)
    item = GetItem(itemName)
    cost = 0
    if item.name == "bread" and quantity == 5
      cost = item.price * 4
    else
      cost = item.price * quantity
    end
    @total = @total + cost
    puts "Item: #{item.name}  $#{item.price}/#{item.uom} Quantity: #{quantity}  Total Price: #{cost}"
    return cost
  end

  def GetItem itemName
    @itemList.each{ |item|
      return item if item.name == itemName
    }
  end

  def getTotal
    puts "Total:        #{@total}"
    return @total
  end
end
