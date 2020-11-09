class Item < ApplicationRecord
  has_many :transactions
  validates :name, :balance, presence: true

  def update_balance(transaction)
    if transaction.kind == 'add'
        elf.balance = self.balance + transaction.amount
        self.save
    elsif transaction.kind == 'subtract'
     if self.balance >= transaction.amount
        self.balance = self.balance - transaction.amount
         self.save
    else
        return 'Balance too low.'
      end
   end
 end

  def update_balance_on_delete(transaction)
    if transaction.kind == 'add'
      if self.balance >= transaction.amount
       self.balance = self.balance - transaction.amount
       self.save
      else
        return 'Balance too low.'
     end
    elsif transaction.kind == 'subtract'
      self.balance = self.balance + transaction.amount
      self.save
    end
  end
end
