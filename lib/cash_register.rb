require 'pry'
class CashRegister

    attr_accessor :total, :items, :last_transaction


    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def discount
        @discount
    end

    def add_item(title, price, quantity=1)
        self.total += quantity*price
        quantity.times do 
            @items << title
        end
        self.last_transaction = price * quantity 
  
    end

    def apply_discount
        if @discount == 0
            "There is no discount to apply."
        else
            discount = @discount / 100.0
            @total = @total - @total * discount
            "After the discount, the total comes to $#{@total.to_i}."
        end  
    end

    def void_last_transaction
        self.total -= last_transaction
        # binding.pry
    end
end