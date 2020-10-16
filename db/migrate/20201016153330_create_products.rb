class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :cost
      t.string :country_of_origin
      t.timestamps
    end
    create_table :reviews do |t|
      t.string :author
      t.string :content_body
      t.string :rating
      t.timestamps
    end
  end
end
