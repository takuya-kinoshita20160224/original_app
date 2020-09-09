class ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
  end

  def create
    if Item.create(item_params)
      redirect_to "/users/#{current_user.id}"
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
      redirect_to "/users/#{current_user.id}"
    else
      render :edit
    end
  end

  def destroy
    item = Item.find(params[:id])
    if item.destroy
      redirect_to "/users/#{current_user.id}"
    else
      render :edit
    end
  end

  def search
    @items = Item.search(params[:keyword]).where(user_id: current_user.id).order("limit_date ASC")
  end

  private
  def item_params
    params.require(:item).permit(:name, :buy_date, :limit_date, :text).merge(user_id: current_user.id)
  end
end
