require 'pry'

=begin
Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms
 will be:
1,2,3,5,8,13,21,34,55,89...

By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
=end

#M_4 = 4_000_000

def even_fibonacci_sum(num)
	fib_array = [1,2]
	fib_sum = fib_array[-1]

	while fib_sum < num + 1
		fib_sum += fib_array[-1]
		fib_array = fib_array.push(fib_array[-1] + fib_array[-2])
	end

	total_evens = 0
	#binding.pry
	fib_array.each do |element|
		if element.even?
			total_evens += element
		end
	end
	return total_evens
end

# put in # 100
# find fib numbers < 100
#   add even fib Numbers together
# return the evens

=begin
#Even Fibonacci Numbers
fib_arr = [1,2]
index = 2
sum = 2


def conv_to_int(str_num)
	str_num = str_num.to_i
end


def current_val(arr, ind)
	return arr[ind-2] + arr[ind-1]
end

def even_fibonacci_sum(arr_even, index_even, sum_even, limit)
	loop do
		break if current_val(arr_even, index_even) > limit
		arr_even << current_val(arr_even, index_even)
		if arr_even[index_even] % 2 == 0
			sum_even += arr_even[index_even]
		end
		index_even +=1
	end
	return sum_even
end

puts even_fibonacci_sum(fib_arr, index, sum, limit=4000000)



#print fib_arr
#puts "The last index of the array has a value of #{fib_arr[index-1]}"
#puts "The total sum of the even number terms that are no greater than 4M is #{sum}!"
=end
