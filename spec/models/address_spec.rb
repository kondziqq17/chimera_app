require 'rails_helper'

RSpec.describe Address, type: :model do

  it "is invalid without a street name" do
    address = Address.new(street: nil)
    address.valid?
    expect(address.errors[:street]).to include("can't be blank")
  end

  it "is invalid without a city name" do
    address = Address.new(city: nil)
    address.valid?
    expect(address.errors[:city]).to include("can't be blank")
  end

  it "is invalid without a street name" do
    address = Address.new(zip_code: nil)
    address.valid?
    expect(address.errors[:zip_code]).to include("can't be blank")
  end

  it "is invalid without a country name" do
    address = Address.new(country: nil)
    address.valid?
    expect(address.errors[:country]).to include("can't be blank")
  end

end
