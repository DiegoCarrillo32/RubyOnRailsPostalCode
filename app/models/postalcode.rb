class Postalcode < ApplicationRecord

  validates :postalcode, presence: true, length: { minimum: 5 ,maximum: 5 }
  validates :neighbourhood, :municipality, :department, presence: true


end
