print "What is the top of the range you want to evaluate? "
top_of_range = gets.to_i

@range = (1..(top_of_range - 1)).to_a

@three_multiples = []
@five_multiples = []

def divisible_3
  @range.each do |number|
    if number % 3 == 0
      @three_multiples.push(number)
    end
  end
end

def divisible_5
  @range.each do |number|
    if number % 5 == 0
      @five_multiples.push(number)
    end
  end
end

divisible_3
divisible_5

sum = (@three_multiples + @five_multiples).uniq

print sum.inject(0, :+)