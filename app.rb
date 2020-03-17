require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse
  end

  get "/square/:number" do
    @number = params[:number].to_i
    result = @number ** 2
    result.to_s
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    loop.times(@number) {@phrase}
    binding.pry
  end


end
