class Product < ApplicationRecord
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

  validates :name, uniqueness: true
  validates :price, numbericality: greater_than%{0}
  validates :description, length: {minimum:10}
  validates :description, length: {maximum:500}

end
