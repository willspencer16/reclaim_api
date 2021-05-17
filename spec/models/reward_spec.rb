require 'rails_helper'

RSpec.describe Reward, type: :model do
  subject do
    described_class.create(
      reward_name: "Milk",
      reward_content: "5% off your next pint of milk",
      business_id: 1
    )
  end

  it 'is valid with valid reward details' do
    expect(subject).to be_valid
  end

  it 'is not valid without a reward name' do
    subject.reward_name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a reward context' do
    subject.reward_content = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a business id' do
    subject.business_id = nil
    expect(subject).to_not be_valid
  end
end
