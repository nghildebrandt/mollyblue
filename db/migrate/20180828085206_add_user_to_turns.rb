class AddUserToTurns < ActiveRecord::Migration[5.2]
  def change
    add_reference :turns, :user, foreign_key: true
  end
end
