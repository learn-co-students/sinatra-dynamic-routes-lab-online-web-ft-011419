require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do
    user_name = params[:name].reverse
  end

  get '/square/:number' do
    square_this_number = params[:number].to_i ** 2
    square_this_number.to_s
  end
  
  get '/say/:number/:phrase' do
    return_value = ""
    user_number = params[:number]
    user_phrase = params[:phrase]
    
    user_number.to_i.times do 
      return_value += user_phrase
      
    end
    return_value
  end  
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    
    "#{word1} #{word2} #{word3} #{word4} #{word5}."
  end
    
  get '/:operation/:number1/:number2' do 
    ops = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    
    if ops == "add"
      solution = num1 + num2
      
    elsif ops == "subtract"
      solution = num1 - num2
      
    elsif ops == "multiply"
      solution = num1 * num2
    
    else ops == "divide" 
      solution = num1/num2
    end
    solution.to_s
  end
end