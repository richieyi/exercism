class Acronym
  def self.abbreviate(string)
    cleaned_string = string.gsub(/\'/, '').gsub(/[-_]/, ' ')
    cleaned_string.upcase.scan(/\b([A-Z])/).join
  end
end
