class Item < ApplicationRecord
    has_many :transactions
    validates :name, :balance, presence: true

    def update_balance(transaction)
        if transaction.kind == 'add'
          self.balance = self.balance + transaction.amount
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
end
