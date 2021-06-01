class CreateGoatAds < ActiveRecord::Migration[6.0]
  def change
    create_table :goat_ads do |t|
      t.string :name
      t.integer :age
      t.string :address
      t.string :longitude
      t.string :latitude
      t.text :description
      t.integer :price_per_day
      t.string :features
      t.string :medias
      t.date :start_available
      t.date :end_available

      t.timestamps
    end
  end
end
