require 'pry'

class CashRegister
    attr_reader :discount, :price, :quantity, :title
    attr_accessor :total, :items
    

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity=1)
        @title = title
        @price = price
        self.total += price * quantity
        @quantity = quantity
        quantity.times do
        @items << title
        end
    end

    def apply_discount
        if self.discount > 0
            self.total -= (self.total * discount / 100)
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= self.price * self.quantity
        #binding.pry
    end

end



