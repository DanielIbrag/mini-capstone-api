class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :tax, :total
end
