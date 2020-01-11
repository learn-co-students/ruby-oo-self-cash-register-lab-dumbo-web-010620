require 'pry'

class CashRegister
    attr_accessor :total, :discount, :all_items, :last_transaction

    # dont need attr_accessor for...   :quantitity, :item, item_price

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @all_items = []

    end

    def add_item(item, item_price, quantity = 1)
        self.total += item_price * quantity
        #self.last_item = item_price * quantity
        quantity.times {self.all_items.push(item)}
        # binding.pry
        self.last_transaction = item_price * quantity

    end

    def apply_discount
        self.total = total - (total * discount/100)
        if self.discount && discount != 0 
            return "After the discount, the total comes to $#{self.total}."
        else "There is no discount to apply."
        end 
    end

    def items
        self.all_items
    end 

    def void_last_transaction
        self.total = self.total - self.last_transaction
        # self.total - self.last_item
    end 
end