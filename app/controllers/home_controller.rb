class HomeController < ApplicationController
  def index
    @client = IEX::Api::Client.new(
      publishable_token: 'Tpk_5a1173a0676d48fd8e83ac1798fd8669',
      endpoint: 'https://sandbox.iexapis.com/v1'
     )
 if params[:ticker]
      @quote = @client.quote(params[:ticker])
      @logo = @client.logo(params[:ticker])
      @company = @client.company(params[:ticker])
 end



  end

  def about
  end
end
