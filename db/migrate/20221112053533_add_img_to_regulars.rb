class AddImgToRegulars < ActiveRecord::Migration[7.0]
  def change
    add_column :regulars, :img_url, :string
  end
end
