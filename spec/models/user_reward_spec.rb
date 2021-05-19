require 'rails_helper'

RSpec.describe UserReward, type: :model do

  subject do
    described_class.create(
      user_id: 1,
      reward_id: 1,
      redeemed: false
    )
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without valid reward_id' do
    subject.reward_id = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a valid user_id' do
    subject.user_id = nil
    expect(subject).to_not be_valid
  end
end
