class CreateBeers < ActiveRecord::Migration[7.0]
  def change
    create_table :beers do |t|
      t.references :brewery, null: false, foreign_key: true
      t.string :name
      t.string :image_url

      t.timestamps
    end
  end
end
