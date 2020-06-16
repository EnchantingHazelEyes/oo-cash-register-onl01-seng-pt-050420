class CashRegister

  attr_accessor :total, :discount, :title, :new_total, :item_list
  
  def initialize(discount = 0)
    @total = total || 0
    @discount = discount
    @title = title
    @item_list = []
  end 
  
  def add_item(title, price, quantity = 1)
      if quantity > 1
        i=0
      while i < quantity
        @items << title
        i+=1
      end
    else
      @items << title
    end
     self.total += price * quantity
  end 
    
  def items
   new_list = []
   item_list.each do |item|
   new_list << item  
  end 
 end 

end 
