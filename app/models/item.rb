class Item < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :buy_date
    validates :limit_date
  end

  def self.search(search)
    if search != ""
      Item.where('name LIKE(?)', "%#{search}%")
    else
      Item.all.order("limit_date ASC")
    end
  end
end
