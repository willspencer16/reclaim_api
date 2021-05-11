# frozen_string_literal: true

class Stamp < ApplicationRecord
  validates_presence_of :user_id
  validates_presence_of :business_id
  validates_presence_of :created_at
  validates_presence_of :updated_at
end
