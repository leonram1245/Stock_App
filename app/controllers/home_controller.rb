class HomeController < ApplicationController

  def index
    @client = IEX::Api::Client.new(
      publishable_token: 'pk_1b55e157dacb479593441868fac9f0de',
      endpoint: 'https://cloud.iexapis.com/v1')
  end

  def search
    @client = IEX::Api::Client.new(
      publishable_token: 'pk_1b55e157dacb479593441868fac9f0de9',
      endpoint: 'https://cloud.iexapis.com/v1')
  
  end

  def about
  end
end
