class Catalogue
  def initialize
    @products = []
  end

  def cheapest
    cheap = @products.min_by do |product|
      product.price
    end
    cheap.nil? ? nil : cheap.type
  end

  def <<(product)
    @products << product
  end
end