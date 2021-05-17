class CreateRewards < ActiveRecord::Migration[6.1]
  def change
    create_table :rewards do |t|
      t.string :reward_name
      t.string :reward_content
      t.integer :business_id

      t.timestamps
    end
  end
end
