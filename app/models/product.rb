class Product < ApplicationRecord
  after_create :display_product

  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :stock, numericality: { greater_than_or_equal_to: 0 }

  private 
    def display_product
      puts "Product is dispayed"
    end


end
