require 'pry'
class CashRegister
    attr_accessor :total, :last_item, :item, :quantity, :items, :discount, :discounted_price

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(item, price, quantity = 1)
        self.total += price * quantity
        quantity.times do
            self.items << item
        end
        self.last_item = price * quantity
        #----------------------------------------- AoH incorporating testing..
        # @price = price
        # @new_hash = {}

        # if quantity > 1
        #     idx = 0
        #     while idx < quantity do
        #         self.new_hash[:item] = item
        #         self.new_hash[:price] = price
        #         self.items << self.new_hash
        #         idx += 1
        #     end

        # else
        #     self.new_hash[:item] = item
        #     self.new_hash[:price] = price
        #     self.items << self.new_hash
        # end
        # self.total = self.items[&:price].sum
    end

    def apply_discount
        if self.discount != 0
            @discounted_price = ((self.total * self.discount)/100)
            self.total -= self.discounted_price
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= self.last_item
    end


end
"chicken"