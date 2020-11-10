class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :balance
  has_many :transactions
end
