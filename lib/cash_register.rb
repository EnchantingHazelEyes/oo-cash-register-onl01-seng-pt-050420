class CashRegister

  attr_accessor :total, :discount, :title, :new_total, :item_list
  
  def initialize(discount = 0)
    @total = total || 0
    @discount = discount
    @title = title
    @item_list = []
  end 
  
  def add_item(title, price, quantity = 1)
     self.total += price * quantity
  end 
  
  def apply_discount
    discounted_total = (total * discount)/100
    total -=discounted_total
    if discount == 0 
      "There is no discount to apply."  
    else
    "After the discount, the total comes to $#{discounted_total}."
    end 
  end 
    
  def items
   new_list = []
   item_list.each do |item|
   new_list << item  
  end 
 end 

end 
