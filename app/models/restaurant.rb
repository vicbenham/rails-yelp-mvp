class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  LIST = %w[chinese italian japanese french belgian]

  validates :name, :address, :category , presence: true
  validates :category, inclusion: { in: LIST }
  validates :phone_number, format: { with: /(?:(?:\+|00)33[\s.-]{0,3}(?:\(0\)[\s.-]{0,3})?|0)[1-9](?:(?:[\s.-]?\d{2}){4}|\d{2}(?:[\s.-]?\d{3}){2})/ }

end
