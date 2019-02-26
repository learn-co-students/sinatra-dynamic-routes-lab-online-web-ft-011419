require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    rev = params[:name]
    @reverse=  rev.reverse!
    "#{@reverse}"
  end

  get '/square/:number' do
    num = params[:number].to_i
    @ans=  num * num
    "#{@ans}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number]
  @word = params[:phrase]
  result = ""
  @num.to_i.times do 
    result += @word
  end
  result
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    a=params[:word1] 
    b=params[:word2] 
    c=params[:word3] 
    d=params[:word4] 
    e=params[:word5]
    "#{a} #{b} #{c} #{d} #{e}."
  end
  
  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    case params[:operation]
    when 'add' 
      "#{num1 + num2}"
    when 'subtract' 
      "#{num1 - num2}"
    when 'multiply' 
      "#{num1 *num2}"
    when 'divide' 
      "#{num1 / num2}"
    end
  end

  
 




















end