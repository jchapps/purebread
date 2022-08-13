class ShopsController < ApplicationController
  before_action :set_sandwich, only: %i[new create]

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_params)
    @shop.sandwich = @sandwich
    if @shop.save
      redirect_to sandwich_path(@sandwich)
    else
      render :new, status: :unprocessable_entity
    end
  end

private

  def set_sandwich
    @sandwich = Sandwich.find(params[:sandwich_id])
  end

  def shop_params
    params.require(:shop).permit(:ingredient_id)
  end
end
