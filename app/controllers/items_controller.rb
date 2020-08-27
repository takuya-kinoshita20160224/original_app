class ItemsController < ApplicationController
  def index
    @items = Item.all.order("limit_date ASC")
  end

  def new
    @item = Item.new
  end
  def create
    Item.create(item_params)
    redirect_to root_path
  end

  private
  def item_params
    params.require(:item).permit(:name, :buy_date, :limit_date, :text)
  end
end
