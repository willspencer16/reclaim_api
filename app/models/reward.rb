class Reward < ApplicationRecord
    validates_presence_of :reward_name
    validates_presence_of :reward_content
    validates_presence_of :business_id
end
