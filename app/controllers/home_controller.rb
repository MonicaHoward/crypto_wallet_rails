class HomeController < ApplicationController
  def index
    # require 'net/http'
    # require 'json'
    #
    # @url = 'https://api.coinmarketcap.com/v1/ticker/'
    # @url = URI(@url)
    # @response = Net::HTTP.get(@url)
    # @coins = JSON.parse(@response)
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

   @name = params[:crypto_name]
    if @name
      @name = @name.titlecase
    end

    if @name == ""
      @name = "Please Enter a cryptocurrency name"
    end
  end

end
