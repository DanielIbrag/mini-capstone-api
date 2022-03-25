class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :description, presence: true, length: { in: 10..500 }

  has_many :category_products
  belongs_to :supplier
  has_many :images
  has_many :carted_products
  has_many :orders, through: :carted_products

  def is_discounted?
    if price < 10
      return true
    else
      return false
    end
  end

  def tax
    tax = price * 0.09
    return tax
  end

  def total
    new_price = 0
    new_price = tax + price
  end
end
