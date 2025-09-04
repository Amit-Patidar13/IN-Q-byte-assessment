require 'string_calculator'

RSpec.describe StringCalculator do
  describe ".add" do
    it "returns 0 for empty string" do
      expect(StringCalculator.add("")).to eq(0)
    end

    it "returns the number itself when only one number is given" do
      expect(StringCalculator.add("1")).to eq(1)
    end

		it "returns sum of two numbers separated by comma" do
			expect(StringCalculator.add("1,5")).to eq(6)
		end

		it "returns sum for multiple numbers" do
			expect(StringCalculator.add("1,2,3,4")).to eq(10)
		end

		it "supports new line as delimiter" do
			expect(StringCalculator.add("1\n2,3")).to eq(6)
		end

		it "raises error for negative numbers" do
			expect { StringCalculator.add("1,-2,3,-4") }
				.to raise_error("negative numbers not allowed -2,-4")
		end
  end
end
