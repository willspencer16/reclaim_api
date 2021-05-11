class Stamp < ApplicationRecord

  validates :user_id, :business_id, presence: true
  
end
