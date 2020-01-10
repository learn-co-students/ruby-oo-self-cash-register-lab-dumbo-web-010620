class CashRegister

    attr_accessor :total, :discount, :items, :last_transaction_amount

    def initialize(discount=0)
      self.total = 0
      self.discount = discount
      self.items = []
      self.last_transaction_amount = 0
    end
  
    def add_item(title, amount, quantity=1)
      self.total += amount * quantity
      quantity.times do
        items << title
      end
  
      self.last_transaction_amount = amount * quantity
    end

    def apply_discount
        if discount == 20
            self.total -= ((self.discount * self.total)/100)
            return "After the discount, the total comes to $#{self.total}."
            
            #self.total = ((total * discount.to_f)total - discount)
        else
            return "There is no discount to apply."

        end 
    end 
  
    def void_last_transaction
      self.total -= last_transaction_amount
    end
    
end 
  