module Isogram
  def self.isogram?(input)
    split = input.gsub(/[- ]/, '').split('')
    hash_table = {}

    split.each do |letter|
      return false if hash_table.key?(letter.downcase)
      hash_table[letter.downcase] = true
    end

    true
  end
end