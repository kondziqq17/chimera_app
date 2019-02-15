require 'rails_helper'

RSpec.describe User, type: :model do

  it "is invalid without a first name" do
    user = User.new(first_name: nil)
    user.valid?
    expect(user.errors[:first_name]).to include("can't be blank")
  end

  it "is invalid without a surname" do
    user = User.new(surname: nil)
    user.valid?
    expect(user.errors[:surname]).to include("can't be blank")
  end

  it "is invalid without an email" do
    user = User.new(email: nil)
    user.valid?
    expect(user.errors[:email]).to include("can't be blank")
  end
end
