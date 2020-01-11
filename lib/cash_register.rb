

class CashRegister
    attr_accessor :total, :discount, :items, :last_item_price
    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(item_name, price, quantity=1)
        self.total += price * quantity        
        quantity.times do
           items << item_name 
        end

        self.last_item_price = price * quantity 
    end

    def apply_discount
        if self.discount !=0
            self.total -= (self.total * (self.discount * 0.01)).to_i
            "After the discount, the total comes to $#{total}."
        else 
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= self.last_item_price
    end

end # end of class

# We're going to create an Object Oriented Cash Register that can:
# * Add items of varying quantities and prices
# * Calculate discounts
# * Keep track of what's been added to it
# * Void the last transaction