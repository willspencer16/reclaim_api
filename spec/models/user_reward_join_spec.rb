require 'rails_helper'

RSpec.describe UserRewardJoin, type: :model do
  subject do
    described_class.create(
      reward_id: 1,
      user_id: 1,
      redeemed: false
    )
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without valid attributes' do
    subject.reward_id = nil
    expect(subject).to_not be_valid
  end

  # it 'is not valid without a password' do
  #   subject.password = nil
  #   expect(subject).to_not be_valid
  # end
end
