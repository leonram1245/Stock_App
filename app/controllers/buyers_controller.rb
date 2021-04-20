class BuyersController < ApplicationController
  def index
    @client = IEX::Api::Client.new(
      publishable_token: 'Tpk_5a1173a0676d48fd8e83ac1798fd8669',
      endpoint: 'https://sandbox.iexapis.com/v1'
     )
  end

  def show
  end

  def new
  end

  def create
  end

  private
end
