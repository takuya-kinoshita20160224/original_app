class Item < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :buy_date
    validates :limit_date
  end
end
