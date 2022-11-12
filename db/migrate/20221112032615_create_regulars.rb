class CreateRegulars < ActiveRecord::Migration[7.0]
  def change
    create_table :regulars do |t|
      t.string :name
      t.string :favorite_drink

      t.timestamps
    end
  end
end
