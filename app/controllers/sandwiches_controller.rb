class SandwichesController < ApplicationController
  #before_action :set_sandwich

  def index
    @sandwiches = Sandwich.all
  end

  def show
    @sandwich = Sandwich.find(params[:id])
  end

  def new
    @sandwich = Sandwich.new
  end

  def create
    @sandwich = Sandwich.new(sandwich_params)
    if @sandwich.save
      redirect_to sandwich_path(@sandwich)
    else
      render :new, status: :unprocessable_entity
    end
  end
end

private

# def set_sandwich
#   @sandwich = Sandwich.find(params[:id])
# end

def sandwich_params
  params.require(:sandwich).permit(:description, :photo, :vegetarian, :cost, :name, :ingredient)
end
