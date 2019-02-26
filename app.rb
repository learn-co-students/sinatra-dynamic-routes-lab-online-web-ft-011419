require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    params[:name].reverse
    # "#{name.reverse}"
  end

  get '/square/:number' do
    num = params[:number].to_i
    "#{num ** 2}"
  end

  get '/say/:number/:phrase' do
    final_string = ""
    (params[:number].to_i).times do
      final_string += params[:phrase]
    end
    final_string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    x = params[:number1].to_i
    y = params[:number2].to_i
    case operation
      when "add"
        answer = x + y
      when "subtract"
        answer = x - y
      when "multiply"
        answer = x * y
      when "divide"
        answer = x / y
    end
    answer.to_s
  end

end
