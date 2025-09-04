# String Calculator - TDD Kata

This project is a solution to the **String Calculator TDD Kata**, implemented in **Ruby** using **RSpec** for testing.  

## Problem Requirements

- `""` → `0`  
- `"1"` → `1`  
- `"1,5"` → `6`  
- Any amount of numbers → sum of all  
- Support newline as delimiter → `"1\n2,3" = 6`  
- Support custom delimiter → `"//;\n1;2" = 3`  
- Negative numbers → raise exception with all negatives listed  

---

## Running Tests

```bash
git clone https://github.com/Amit-Patidar13/IN-Q-byte-assessment.git
cd IN-Q-byte-assessment
bundle install
bundle exec rspec spec/
