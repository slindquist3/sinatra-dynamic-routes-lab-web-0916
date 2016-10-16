require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    @reversed_name = @name.reverse
    "This is your reversed name: #{@reversed_name}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "This is the square: #{@num * @num}"
  end

  get '/say/:number/:phrase' do
    @string = ""
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @num.times do
      @string +="\n#{@phrase}"
    end
    @string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @sentence = ""
    @sentence += params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
    @sentence
  end

  get '/:operation/:number1/:number2' do
     @operation = params[:operation]
     @num1 = params[:number1].to_i
     @num2 = params[:number2].to_i
     @num1 + @operation + @num2
   end



end
