require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_secure_password }

  describe "validates email" do
    it { should validate_presence_of :email }
    it { should validate_uniqueness_of :email }
    it { should_not allow_value("test").for(:email) }
    it { should allow_value("test@gmail.com").for(:email) }
  end

  describe "relations" do
    it { should have_many :questions }
  end

end
