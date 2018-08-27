class AddUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.timestamps

      t.references :game
    end
  end
end
