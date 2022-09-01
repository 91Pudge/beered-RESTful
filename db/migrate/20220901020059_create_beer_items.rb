class CreateBeerItems < ActiveRecord::Migration[7.0]
  def change
    create_table :beer_items do |t|
      t.string :beer_name
      t.string :brewery
      t.string :description
      t.integer :ibu

      t.timestamps
    end
  end
end
