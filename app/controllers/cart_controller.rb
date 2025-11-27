class CartController < ApplicationController
  before_action :initialize_cart
  
  def show
    @cart_items = []
    @total = 0
    
    session[:cart].each do |product_id, quantity|
      product = Product.find_by(id: product_id)
      if product
        @cart_items << { product: product, quantity: quantity }
        @total += product.price * quantity
      end
    end
  end
  
  def add
    product = Product.find(params[:id])
    session[:cart][product.id.to_s] ||= 0
    session[:cart][product.id.to_s] += 1
    
    redirect_to products_path, notice: "#{product.name} added to cart!"
  end
  
  def remove
    session[:cart].delete(params[:id])
    redirect_to cart_path, notice: "Item removed from cart"
  end
  
  def clear
    session[:cart] = {}
    redirect_to products_path, notice: "Cart cleared"
  end
  
  private
  
  def initialize_cart
    session[:cart] ||= {}
  end
end