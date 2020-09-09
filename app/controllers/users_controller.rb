class UsersController < ApplicationController
  def show
    @items = current_user.items.order("limit_date ASC")
  end
end
