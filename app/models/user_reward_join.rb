class UserRewardJoin < ApplicationRecord
  validates_presence_of :reward_id
  validates_presence_of :user_id
end
