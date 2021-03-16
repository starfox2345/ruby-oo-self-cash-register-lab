require 'pry'
class CashRegister

    attr_accessor :total

    def initialize(total=0)
        @total = total
        # @discount = discount
        
    end

    # def discount=(discount)
    #     @discount = discount
    # end

    def discount
        @total
    end

    # def total=(total)
    #    @total = total
    # end

    # def total
    #     @total
    # end

    def add_item(title, price, quantity=1)
        self.total += quantity*price
    end

    def apply_discount
        # binding.pry
        # total = 800.0 - @total
        # discount = 800.0 / @total
        # @total *= discount
        # @total.reduce(20)
        @total = @total * (800.0 / @total)
        "After the discount, the total comes to $#{@total.to_i}."
        
        
    end
end