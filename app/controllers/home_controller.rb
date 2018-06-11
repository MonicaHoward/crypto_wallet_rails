class HomeController < ApplicationController
  def index

    require 'net/http'
    require 'json'

    @url = 'https://api.coinmarketcap.com/v2/ticker/'
    @url = URI(@url)
    @response = Net::HTTP.get(@url)
    @coins = JSON.parse(@response)

  end

  def about

  end

  def search
   @symbol = params[:sym]
  end
end
