class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :title
      t.text :description
      t.integer :sharing_mode
      
      t.timestamps
    end
  end
end
