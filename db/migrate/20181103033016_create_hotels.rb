class CreateHotels < ActiveRecord::Migration[5.2]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :code
      t.string :address
      t.string :postcode
      t.string :country
      t.string :city
      t.string :url

      t.timestamps
    end
  end
end
