module Luhn
  def self.valid?(string_of_num)
    return false if string_of_num.match?(/[^0-9 ]/)
    
    cleaned_string = string_of_num.gsub(' ', '')
    
    return false if cleaned_string.length < 2

    reversed_string_of_num = cleaned_string.split('').reverse

    new_num_string = ''

    reversed_string_of_num.each_with_index do |num, idx|
      if idx == 1 || (idx - 1) % 2 == 0
        integer_num = num.to_i
        
        if integer_num * 2 >= 10
          new_num_string += ((integer_num * 2) - 9).to_s
        else
          new_num_string += (integer_num * 2).to_s
        end
      else
        new_num_string += num
      end
    end

    total = 0

    new_num_string.split('').each do |num| 
      total += num.to_i
    end

    total % 10 == 0
  end
end