class CreateUserRewards < ActiveRecord::Migration[6.1]
  def change
    create_table :user_rewards do |t|
      t.belongs_to :user
      t.belongs_to :reward
      t.boolean :redeemed

      t.timestamps
    end
  end
end
