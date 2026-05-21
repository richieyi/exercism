=begin
Write your code for the 'Isogram' exercise in this file. Make the tests in
`isogram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isogram` directory.
=end

module Isogram
  def self.isogram?(input)
    split = input.gsub(/[- ]/, '').split('');
    hash_table = {}

    for letter in split do
      if !hash_table[letter.downcase]
        hash_table[letter.downcase] = true
      else
        return false
      end
    end

    true
  end
end