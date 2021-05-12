# frozen_string_literal: true

class Stamp < ApplicationRecord
  validates_presence_of :user_id
  validates_presence_of :business_id
end
