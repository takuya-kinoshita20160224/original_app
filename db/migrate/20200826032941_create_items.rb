class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name,           null: false
      t.text :text
      t.date :buy_date,         null: false
      t.date :limit_date,       null: false
      t.integer :user_id,     null: false
      t.timestamps
    end
  end
end
