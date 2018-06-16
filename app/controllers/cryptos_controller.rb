class CryptosController < ApplicationController
  before_action :set_crypto, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @cryptos = Crypto.all
  end

  def show
  end

  def new
    @crypto = Crypto.new
  end


end
