class CreateBeers < ActiveRecord::Migration[7.0]
  def change
    create_table :beers do |t|
      t.string :beer_name
      t.string :Brewery
      t.string :Description
      t.integer :IBU

      t.timestamps
    end
  end
end
