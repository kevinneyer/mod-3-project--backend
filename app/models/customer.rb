class Customer < ApplicationRecord
    has_many :bars
    has_many :cocktails, through: :bars
end
