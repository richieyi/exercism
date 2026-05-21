class SimpleCalculator
  class UnsupportedOperation < StandardError
  end
  
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
      calculated = nil
  
      if first_operand.class == String || second_operand.class == String
        raise ArgumentError.new("Invalid argument types")
      end
  
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
      else
        raise UnsupportedOperation
      end
  
      "#{first_operand} #{operation} #{second_operand} = #{calculated}"
    end
end
