class CryptosController < ApplicationController
  before_action :set_crypto, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :correct_user, only: [:show, :edit, :update, :destroy]

  def index
    @cryptos = Crypto.all
  end

  def show
  end

  def new
    @crypto = Crypto.new
  end

  def edit

  end

  def create
    @crypto = Crypto.new(crypto_params)

    respond_to do |format|
    if @crypto.save
      format.html { redirect_to @crypto, notice: 'Crypto was successfully saved'}
      format.json { render :show, status: :ok, location: @crypto }
    else
      format.html { render :edit }
      format.json { render json: @crypto.errors, status: :unprocessable_entity }
    end
    end
end

  private

  def set_crypto
    @crypto = Crypto.find(params [:id])

  end

  def crypto_params
    params.require(:crypto).permit(:symbol, :user_id, :cost_per, :amount_purchased )
  end

  def correct_user
    @correct = current_user.cryptos.find_by(id: params[:id])
    redirect_to cryptos_path, notice: "Not authorized to perform action"
  end

end