class ItemsController < ApplicationController
  def index
    @items = Item.all.order("limit_date ASC")
  end

  def new
    @item = Item.new
  end

  def create
    if Item.create(item_params)
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    item = Item.find(params[:id])
    if item.update(item_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    item = Item.find(params[:id])
    if item.destroy
      redirect_to root_path
    else
      render :edit
    end
  end

  def search
    @items = Item.search(params[:keyword])
  end

  private
  def item_params
    params.require(:item).permit(:name, :buy_date, :limit_date, :text)
  end
end
