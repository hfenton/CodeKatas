module Fibonacci
  extend self

  def get_terms_less_than(max_value)
    current_value = 1
    term_1 = current_value
    term_2 = 0
    terms = []
    # until current_value > max_value
    #   terms << term_1 unless terms.include?(term_1)
    #   next_term = term_1 + term_2
    #   puts "They are next_term:#{next_term}, 1st #{term_1}, 2nd #{term_2}"
    #   term_2 = term_1
    #   term_1 = next_term
    #   current_value = next_term
    # end

    while current_value < max_value
      terms << term_1 unless terms.include?(term_1)
      next_term = term_1 + term_2
      puts "They are next_term:#{next_term}, 1st #{term_1}, 2nd #{term_2}"
      term_2 = term_1
      term_1 = next_term
      current_value = next_term
    end

    return terms
  end

  def sum_of_terms_less_than(value)
    sum = 0
    get_terms_less_than(value).each { |x| sum += x }
    sum
  end

  def sum_of_even_terms_less_than(value)
    terms = get_terms_less_than(value)
    sum_even_terms(terms)
  end

  def is_even?(value)
    return value % 2 == 0
  end

  def sum_even_terms(terms)
    sum = 0
    terms.each { |x|
      sum += x if is_even?(x)
    }
    sum
  end

end