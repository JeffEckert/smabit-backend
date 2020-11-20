class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :amount, :kind, :date, :note, :item_id

  def date

    self.object.date.strftime("%m/%d/%Y %I:%M%p")
  end

end
