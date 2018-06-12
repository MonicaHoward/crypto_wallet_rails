class HomeController < ApplicationController
  def index
    require 'net/http'
    require 'json'

    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @url = URI(@url)
    @response = Net::HTTP.get(@url)
    @coins = JSON.parse(@response)
  end

  def about
  end

  def search
    require 'net/http'
    require 'json'

    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @url = URI(@url)
    @response = Net::HTTP.get(@url)
    @coin_search = JSON.parse(@response)

   @symbol = params[:sym]
    if @symbol
      @symbol = @symbol.upcase
    end

    if @symbol == ""
      @symbol = "Please Enter a Currency"
    end
  end

end
