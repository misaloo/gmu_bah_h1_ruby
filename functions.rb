# Return a reversed copy of the array
def reverse(an_array)
  an_array.reverse
end

# Return a map of letters and counts of letters
# Letters should be lowercase before counting
# For example, histogram('Hello') returns {'h'=>1,'e'=>1,'l'=>2,'o'=>1}
def histogram(a_string)
  dcase_str = a_string.downcase
  no_space_str = dcase_str.gsub(/\s/,"")
  no_space_str.chars.group_by(&:chr).map{|k, v| [k,v.size]}
  #chars = a_string.split(//).uniq
  # chars.map {|x| a_string.count(x)}.join(',')
  # counts = Hash.new(0)
  # chars.each{ |char| counts[char] += 1 }
end

# Sum all the numbers in the array
# an_array can contain lots of different things
# Be sure to only sum the numbers
# (Hint: the is_a? method might be useful here)
def sum_only_numbers(an_array)
  sum = 0
  an_array.select{|x| x.is_a?Numeric }.each{|x| sum +=x }
  sum
end

# For i from 1 to 100, return an array.
# The elements in the array should follow this algorithm:
# If i is a multiple of 3, the element is 'Fizz'
# If i is a multiple of 5, the element is 'Buzz'
# If i is a multiple of 3 and 5, the element is 'FizzBuzz'
# Otherwise, the element is simply the value of i
# For example [1, 2, 'Fizz', 4, 'Buzz', 'Fizz', ..., 14, 'FizzBuzz', ...]
def fizzbuzz
  (1..100).map do |i|
	if (i % 15).zero?
	  'FizzBuzz'
	elsif (i % 3).zero?
	  'Fizz'
	elsif (i % 5).zero?
	  'Buzz'
	else
	   i
	end
  end
end

# Uncomment each of these to test your functions
# puts reverse([3,6,'dog']).inspect
# puts histogram('Hello').inspect
# puts sum_only_numbers [4, 'foo', [ ], 27, :rain, 3.14]
# puts fizzbuzz