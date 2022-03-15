class RemoveTitleFromPieces < ActiveRecord::Migration[6.0]
  def change

    remove_column :pieces, :type

    add_column :pieces, :style, :string

  end
end
