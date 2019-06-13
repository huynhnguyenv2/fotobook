class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :title
      t.text :description
      t.integer :sharing_mode

      t.timestamps
    end
  end
end
