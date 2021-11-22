class GamesController < ApplicationController
require 'json'

  def new
    atoz = ('A'..'Z').to_a
    @letters = (10.times.map { atoz.sample(1) }).flatten
  end

  def score
    @userinput = params[:score].to_s.upcase
    @new_array = @userinput.chars
    raise
    @letter_array = JSON.parse(params["token-letters"])
    @test = (@new_array - @letter_array).empty?
    url = `https://wagon-dictionary.herokuapp.com/#{@test}`
    user_serialized = URI.open(url).read
    user = JSON.parse(user_serialized)
    if 
  end



end
