class Company < ApplicationRecord
  belongs_to :address

  accepts_nested_attributes_for :address

  validates :name, length: { maximum: 200 }

end
