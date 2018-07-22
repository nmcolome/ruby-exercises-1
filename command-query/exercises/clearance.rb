class Clearance
  def initialize
    @stock = []
  end

  def <<(item)
    @stock << item
  end

  def best_deal
    product = @stock.min_by { |item| item.final_price }
    product.nil? ? nil : product.name
  end
end