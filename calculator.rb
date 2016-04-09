require "pry"

class Calculator

def initialize(first,second)
	@first = first
	@second = second	
end

def calc(operation)
    if operation == "plus"
      result = @first + @second
    elsif operation == "minus"
      result = @first - @second
    elsif operation == "multiplied by"
      result = @first * @second 
    elsif operation == "divided by"
      result = @first / @second
    end 

    "#{@first} #{operation} #{@second} = #{result}"
end

end