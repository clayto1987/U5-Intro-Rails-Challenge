class Product < ActiveRecord::Base
  attr_accessible :description, :price, :stock_quantity, :title
  validates :title, :price, :stock_quantity, :presence => true

  def self.product_average_price
    Product.average(:price)
  end

  def self.product_max_price
    Product.maximum(:price)
  end

  def self.total_stock_quantity
    Product.sum(:stock_quantity)
  end
end
