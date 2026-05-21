module Isogram
  def self.isogram?(input)
    split = input.gsub(/[- ]/, '').split('')
    hash_table = {}

    split.each do |letter|
      if !hash_table[letter.downcase]
        hash_table[letter.downcase] = true
      else
        return false
      end
    end

    true
  end
end