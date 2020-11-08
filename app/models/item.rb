class Item < ApplicationRecord
    has_many :transactions
    validates :name, :balance, presence: true
end
