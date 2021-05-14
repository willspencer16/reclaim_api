# frozen_string_literal: true

class CreateStamps < ActiveRecord::Migration[6.1]
  def change
    create_table :stamps do |t|
      t.integer :user_id
      t.integer :business_id
      t.boolean :redeemed, default: false

      t.timestamps
    end
  end
end
