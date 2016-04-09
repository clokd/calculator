require "sinatra"

require "sinatra/reloader"

require_relative "calculator"

get "/" do
	erb(:calculator_home)
end

get "/add" do
  erb(:add)
end

get "/subtract" do
  erb(:subtract)
end

get "/multiply" do
  erb(:multiply)
end

get "/divide" do
  erb(:divide)
end

 
post "/calculate_add" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  calculation = Calculator.new(first,second)
  result = calculation.add
end

post "/calculate_subtract" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  calculation = Calculator.new(first,second)
  result = calculation.subtract
end

post "/calculate_multiply" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  calculation = Calculator.new(first,second)
  result = calculation.multiply
end

post "/calculate_divide" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  calculation = Calculator.new(first,second)
  result = calculation.divide
end