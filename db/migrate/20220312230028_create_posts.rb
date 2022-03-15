class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :image
      t.text :caption
      t.integer :owner_id

      t.timestamps
    end
  end
end
