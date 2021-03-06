# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Stamp, type: :model do
  subject do
    described_class.create(
      user_id: 1,
      business_id: 1,
      redeemed: false,
      created_at: DateTime.now,
      updated_at: DateTime.now
    )
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a user id' do
    subject.user_id = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a business id' do
    subject.business_id = nil
    expect(subject).to_not be_valid
  end
end
