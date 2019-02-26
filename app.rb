require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    params[:name].reverse
  end

  get "/square/:number" do
    @sqrt = params[:number].to_i
    erb :square
  end

  get "/say/:number/:phrase" do
    @phrase = params[:phrase]^params[:number]
    "#{@phrase}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @concat = params[:word1] + params[:word2] + params[:word3] + params[:word4] + params[:word5]
    "#{@concat}"
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:number1] + params[:number2]
    "#{@operation}"
  end

end
