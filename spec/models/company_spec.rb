require 'rails_helper'

RSpec.describe Company, type: :model do

  it "does not require a name" do
    company = Company.new(name: nil)
    company.valid?
    expect(company.errors[:name]).not_to include("can't be blank")
  end

  it "does not require a address" do
    address = Company.new(address: nil)
    address.valid?
    expect(address.errors[:address]).not_to include("can't be blank")
  end
end
