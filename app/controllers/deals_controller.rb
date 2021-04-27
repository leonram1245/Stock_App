class DealsController < ApplicationController
  before_action :set_deal, only: [:edit, :update, :destroy]

  def index
    @deals = current_user.deals
  end

  def show
  end

  def new
    @deal = current_user.deals.build
  end

  def edit
  end

  def create
    @deal = current_user.deals.build(deal_params)

    respond_to do |format|
      if @deal.save
        format.html { redirect_to @deal, notice: 'Deal successfully created' }
        format.json { render :show, status: :created, location: @deal }
      else
        format.html { render.new }
        format.json { render json: @deal.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @deal.update(deal_params)
        format.html { redirect_to @deal, notice: 'Deal successfully updated!' }
        format.json { render :show, status: :ok, location: @category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @deal.destroy
    respond_to do |format|
      format.html { redirect_to deals_path, notice: 'Deal successfully deleted' }
      format.json { head :no_content }
    end
  end

  private
    def set_deal
      @deal = current_user.deals.find(params[:id])
    end

    def deal_params
      params.require(:deal).permit(:user_id)
    end
end
