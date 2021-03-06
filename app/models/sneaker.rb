class Sneaker < ApplicationRecord
  validates :make, presence: true
  validates :price, presence: true
  validates :price, numericality: true
  validates :description, presence: true
  validates :description, length: { in: 5..300 }

  belongs_to :supplier
  has_many :images
  has_many :category_sneakers
  has_many :categories, through: :category_sneakers
  has_many :carted_products
  has_many :users, through: :carted_products
  has_many :orders, through: :carted_products
  
  # def sale_message
  #   if price.to_f < 1000
  #     message = "Discounted Item!"
  #   else
  #     message = "On Sale!"
  #   end
  #   message
  # end

  def discounted?
    price.to_f < 800
  end

  def tax
    tax = price.to_f * 0.09
  end

  def total
    price.to_f + tax
  end

  def in_stock
    if sneaker_in_stock?
      message = "In Stock"
    else
      message = "Sold Out"
    end
  end
  
  def top_image
    first_image = images.first
    if first_image
      images.first.url
    else
      "https://upload.wikimedia.org/wikipedia/en/c/c7/Michael_Jordan_crying.jpg"
    end
  end
end
