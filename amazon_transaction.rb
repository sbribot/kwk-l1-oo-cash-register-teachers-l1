# Code your cash register here!

class AmazonTransaction
  attr_accessor :subtotal, :discount, :items
  
  def initialize
    @total = 0
    @discount = 0 
    @items = []
  end
  
  def add_item(name,price,quantity)
    @items << name
    @total = @total + (price * quantity)
  end

  def add_discount(percentage)
    @discount = (100-percentage)/100*@total
  end
  
  def show_receipt()
    puts @items
    puts "Subtotal: $#{@total}"
    puts "Discount: $#{@discount}"
    puts "Amount Due: $#{(@total - @discount)}"
  end
  
  def print_all_items
    @items
  end 

end 

transaction_one = AmazonTransaction.new 

transaction_one.add_item("pajamas", 10.99, 1)

transaction_one.show_receipt
transaction_one.print_all_items

