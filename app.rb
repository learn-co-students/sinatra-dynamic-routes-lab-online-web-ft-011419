require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @reversed_name = params[:name].reverse
    "#{@reversed_name}"
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase] * params[:number].to_i
    @phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @sentence = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]

    if @operation == "add"
      @final_number = (params[:number1].to_i + params[:number2].to_i).to_s
    elsif @operation == "subtract"
      @final_number =  (params[:number2].to_i - params[:number1].to_i).to_s
    elsif @operation == "multiply"
      @final_number = (params[:number1].to_i * params[:number2].to_i).to_s
    elsif @operation == "divide"
      @final_number = (params[:number1].to_i / params[:number2].to_i).to_s
    end
  end

end
