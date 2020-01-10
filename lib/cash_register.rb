require "pry"

class CashRegister
    attr_accessor :total, :discount, :price



    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)

        
        @total += (price * quantity)
        
        item_name = {}
        item_name[:quantity] = quantity
        item_name[:title] = title
        item_name[:price] = price
        quantity.times{@items << item_name}
        
    end

    def apply_discount
    if @discount > 0
        total_discount = @total * (@discount.to_f / 100)
        @total -= total_discount
        return "After the discount, the total comes to $#{@total.to_i}."
    else
        return "There is no discount to apply."
    end
    end

    def void_last_transaction
        
        if @items.size > 0

            @total -= (@items.last[:price] * @items.last[:quantity])
        else
            return @total = 0.0
        end
    end
        
    def items
        @items.map {|array| array[:title] }
        
    end

    
end
