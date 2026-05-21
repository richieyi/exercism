class Acronym
  def self.abbreviate(string)
    words = string.gsub(/[-_]/, ' ').strip.split(' ')
    abbreviation = ''

    words.map { |word| abbreviation += word[0].upcase}

    abbreviation
  end
end