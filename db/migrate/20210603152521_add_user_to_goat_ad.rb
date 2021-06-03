class AddUserToGoatAd < ActiveRecord::Migration[6.0]
  def change
    add_reference :goat_ads, :user, null: false, foreign_key: true
  end
end
