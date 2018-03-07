require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    name = @name.reverse!
    name
  end

    get '/square/:number' do
      @number = params[:number]
      n = @number.to_i
      num = n ** 2
      num.to_s
    end

    get '/say/:number/:phrase' do
      ph = ''
      params[:number].to_i.times do
        ph += params[:phrase]
      end

    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do
      "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]} "
    end

    get '/:operation/:number1/:number2'do
      @operation = params[:num1].to_i * params[:num2].to_i

   end

end
