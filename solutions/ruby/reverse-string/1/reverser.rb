module Reverser
  def self.reverse(string)
    letters = string.split('')
    new_string = ''

    letters.each do |letter| 
      new_string.prepend(letter)
    end

    new_string
  end
end