class Chef < ApplicationRecord
  has_many :appointments
  has_many :reviews, through: :appointments
end
