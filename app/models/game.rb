class Game < ApplicationRecord
  has_many :turns

  def join(user)
    return if !player_missing?
    return if [user_1_id, user_2_id].include? user

    if user_2_id? || (!user_1_id? && rand > 0.5)
      update_attributes user_1_id: user
    elsif !user_2_id
      update_attributes user_2_id: user
    end
  end

  def turn?(user)
    player_num(user) == turn
  end

  def player_missing?
    not user_1_id? && user_2_id?
  end

  def player_num(user)
    return 1 if user_1_id == user
    return 2 if user_2_id == user
  end
end
