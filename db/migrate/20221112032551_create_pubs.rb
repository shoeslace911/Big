class CreatePubs < ActiveRecord::Migration[7.0]
  def change
    create_table :pubs do |t|
      t.string :name
      t.string :location
      t.integer :rating

      t.timestamps
    end
  end
end
