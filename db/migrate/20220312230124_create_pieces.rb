class CreatePieces < ActiveRecord::Migration[6.0]
  def change
    create_table :pieces do |t|
      t.string :image
      t.string :brand
      t.string :type

      t.timestamps
    end
  end
end
