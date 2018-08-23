class AddGameAndMoves < ActiveRecord::Migration[5.2]
  def change
    change_table :games do |t|
      t.integer :turn, default: 1
    end

    create_table :turns do |t|
      t.references :game

      t.integer :player

      t.integer :first_x
      t.integer :first_y
      t.integer :last_x
      t.integer :last_y

      t.timestamps
    end
  end
end
