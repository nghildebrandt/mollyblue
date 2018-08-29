class AddUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.timestamps
    end

    create_join_table :users, :games do |t|
      t.index [:user_id, :game_id]
    end
  end
end
