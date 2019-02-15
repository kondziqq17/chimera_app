class User < ApplicationRecord
  belongs_to :address, optional: true
  belongs_to :company, optional: true

  accepts_nested_attributes_for :address
  accepts_nested_attributes_for :company

  validates :first_name, presence: true, length: { maximum: 100 }
  validates :surname, presence: true, length: { maximum: 100 }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }





end
