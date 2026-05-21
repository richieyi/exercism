class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    raise ArgumentError.new("Invalid argument types") if first_operand.class == String || second_operand.class == String
    raise UnsupportedOperation unless ALLOWED_OPERATIONS.include?(operation)

    calculated = nil
  
    if operation == "+"
      calculated = first_operand + second_operand
    elsif operation == "*"
      calculated = first_operand * second_operand
    elsif operation == "/"
      begin
        calculated = first_operand / second_operand
      rescue ZeroDivisionError
        return "Division by zero is not allowed."
      end
    end
  
    "#{first_operand} #{operation} #{second_operand} = #{calculated}"
  end

  class UnsupportedOperation < StandardError
  end
end
