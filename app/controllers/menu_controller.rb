class MenuController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

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
    @menu_item = current_user.menu_items.build(menu_item_params)
    if @menu_item.save
      redirect_to menu_item_path(@menu_item), notice: 'Menu item was successfully created.'
    else
      render :new
    end
  end
  def edit
    @menu_item = MenuItem.find(params[:id])
  end

  def update
    @menu_item = MenuItem.find(params[:id])
    if @menu_item.update(menu_item_params)
      redirect_to menu_item_path(@menu_item), notice: 'Menu item was successfully created.'
    else
      render :edit
    end
  end

  def destroy
    @menu_item = MenuItem.find(params[:id])
    @menu_item.destroy
    redirect_to menu_category_path(@menu_item.category)
  end

  private

  def menu_item_params
    params.require(:menu_item).permit(:name, :price, :category)
  end

  # def authenticate_user!
  #   redirect_to new_user_session_path unless user_signed_in?
  # end
end
