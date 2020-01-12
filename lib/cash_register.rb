require 'pry'
class CashRegister

    attr_accessor :total, :discount, :items, :price, :last_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    #     #depending on the quantity the price goes up 
    #     #[apples, oranges] <== cart +bananas(5) each with a price of 1.0
    #     #[cart total] + 5 * 1.0 = 5 then 5 + the cart total.
    #     # item  has {:name => "name", :price => x.xx, :quantity => xx} 
    def add_item(item, price, quantity = 1)
        @price = price
        @total += price * quantity
        if quantity > 1
          counter = 0
          while counter < quantity
            @items << item
            counter += 1
          end
        else
          @items << item
        end
      end

    def apply_discount
        if @discount > 0
            @take_off= (price * discount)/100
            @total -= @take_off
            return "After the discount, the total comes to $#{@total}."
        else
            return "There is no discount to apply."
        end
    end

    def items
        @items
    end
 
    def void_last_transaction
         @total -= @price
         @total = @last_transaction.to_f
    end
end
