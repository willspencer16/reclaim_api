class CreateStamps < ActiveRecord::Migration[6.1]
  def change
    create_table :stamps do |t|
      t.string :user_id
      t.string :business_id
      t.boolean :redeemed

      t.timestamps
    end
  end
end
