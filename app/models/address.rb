class Address < ApplicationRecord

  validates :street, presence: true
  validates :city, presence: true
  validates :zip_code, presence: true
  validates :country, presence: true


end
