require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    name = params[:name]
    name = name.split("").reverse.join("")

  end

  get "/square/:number" do
    number = params[:number].to_i
    number = number * number
    number.to_s
  end

  get "/say/:number/:phrase" do
    number = params[:number].to_i
    (params[:phrase] + "\n") * number
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do

    word = ""
    i = 1
    while i <= 5
      word = word + " " + params[("word" + i.to_s).to_sym]
      i += 1
    end
    word = word + "."
    # word
  end

  get "/:operation/:number1/:number2" do
    num1 = params[:number1]
    num2 = params[:number2]
    num1/num2
  end
end
