class MenuController < ApplicationController
  before_action :set_params, only: [:create, :edit, :update, :destroy]

  def category
    @categories = MenuItem.all.group_by(&:category)
  end

  def by_category
    @category = params[:category]
    @menu_items = MenuItem.where(category: @category)
  end
  def show
    @menu_item = MenuItem.find(params[:id])
  end
  def new
    @menu_item = MenuItem.new
  end

  def create
    @menu_item = MenuItem.new(menu_item_params)
  end
  def edit
    @menu_item = MenuItem.find(params[:id])
  end

  def update
    @menu_item = MenuItem.update(menu_item_params)
  end

  def destroy
    @menu_item =  MenuItem.destroy
  end

  private

  def menu_item_params
    params.require(:menu_item).permit(:name, :price, :category, :user)
  end
end
