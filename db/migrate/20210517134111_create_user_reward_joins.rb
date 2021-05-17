class CreateUserRewardJoins < ActiveRecord::Migration[6.1]
  def change
    create_table :user_reward_joins do |t|
      t.integer :reward_id
      t.integer :user_id
      t.boolean :redeemed

      t.timestamps
    end
  end
end
