RSpec.describe Stamp, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:user_id) }
    it { is_expected.to validate_presence_of(:business_id) }    
  end
end
