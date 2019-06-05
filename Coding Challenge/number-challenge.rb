# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

@range_of_thousand = (1..1000).to_a

@multiples_of_3 = []
@multiples_of_5 = []

def is_divided_by_3()
  @range_of_thousand.each do |number|
    if number % 3 == 0
      @multiples_of_3.push(number)
    end
  end
end

def is_divided_by_5()
  @range_of_thousand.each do |number|
    if number % 5 == 0
      @multiples_of_5.push(number)
    end
  end
end

is_divided_by_3
is_divided_by_5

sum_of_numbers = (@multiples_of_3 + @multiples_of_5).uniq

print sum_of_numbers.inject(0, :+)

#233168