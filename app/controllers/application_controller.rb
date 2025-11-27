class ApplicationController < ActionController::Base
  before_action :initialize_cart
  helper_method :cart_count
  
  private
  
  def initialize_cart
    session[:cart] ||= {}
  end
  
  def cart_count
    session[:cart].values.sum
  end
end
