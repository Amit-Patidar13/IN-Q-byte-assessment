class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?
    return numbers.to_i if numbers.size == 1
    if numbers.start_with?("//")
			delimiter, numbers = numbers[2..].split("\n", 2)
			nums = numbers.split(delimiter).map(&:to_i)
		else
			nums = numbers.split(/,|\n/).map(&:to_i)
			negatives = nums.select { |n| n < 0 }
			raise "negative numbers not allowed #{negatives.join(",")}" if negatives.any?
		end
		nums.sum
  end
end