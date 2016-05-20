class CreatePosts < ActiveRecord::Migration
  def change
    #Migracion de la tabla post
    create_table :posts do |t|
      t.integer :tag_id
      t.string :title, null: false
      t.text :content, null: false
 
      t.timestamps
    end
  end
end
