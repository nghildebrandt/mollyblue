class AddUserIdsToGame < ActiveRecord::Migration[5.2]
  def change
    change_table :games do |t|
      t.string :user_1_id
      t.string :user_2_id
    end
  end
end
