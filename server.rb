require "sinatra"

require "sinatra/reloader"

require_relative "calculator"

require "pry"

get "/" do
	erb(:input)
end

 
post "/calculate" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  function = params[:operation]
  # binding.pry
  calculation = Calculator.new(first,second)
  result = calculation.calc(function)
end