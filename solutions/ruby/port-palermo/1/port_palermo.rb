module Port
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    letters = city.upcase.split('')
    (letters[0] + letters[1] + letters[2] + letters[3]).to_sym
  end

  def self.get_terminal(ship_identifier)
    id_string = ship_identifier.to_s
    id_string.include?("OIL") || id_string.include?("GAS") ? :A : :B
  end
end
