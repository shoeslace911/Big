class CreateSpies < ActiveRecord::Migration[7.0]
  def change
    create_table :spies do |t|
      t.string :note
      t.references :pub, null: false, foreign_key: true
      t.references :regular, null: false, foreign_key: true

      t.timestamps
    end
  end
end
