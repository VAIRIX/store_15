module Spree
  class Provider < Spree::Base
    has_many :spree_products, :class_name => 'Spree::Product'
    validates :name, :tel, presence: true
  end
end