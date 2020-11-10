class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :amount, :kind, :date, :note
end
