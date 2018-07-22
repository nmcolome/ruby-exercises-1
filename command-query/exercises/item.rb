class Item
  attr_reader :name,
              :price,
              :discount,
              :final_price

  def initialize(name, price_details)
    @name         = name
    @price        = price_details[:price]
    @discount     = price_details[:discount]
    @final_price  = @price - @discount
  end
end