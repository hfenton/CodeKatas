module Multiples3And5
  extend self

  def is_multiple_of_3?(value)
    return value % 3 == 0
  end

  def is_multiple_of_5?(value)
    return value % 5 == 0
  end

  def sum_multiple_of_3_and_5_below(upper_bound)
    sum = 0
    for value in 1..upper_bound-1 do
      sum += value if (is_multiple_of_5?(value) or is_multiple_of_3?(value))
    end
    sum
  end

end