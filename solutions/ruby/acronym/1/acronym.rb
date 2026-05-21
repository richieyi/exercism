=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end

class Acronym
  def self.abbreviate(str)
    split = str.gsub(/[-_]/, ' ').strip.split(' ')
    abbreviation = ''

    for word in split do
      abbreviation = abbreviation + word[0].upcase
    end

    abbreviation
  end
end