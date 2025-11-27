class ProductsController < ApplicationController
  def index
    @products = Product.all
    
    # Search functionality
    if params[:search].present?
      @products = @products.where("name LIKE ?", "%#{params[:search]}%")
    end
    
    # Filter by category
    if params[:category].present? && params[:category] != "All"
      @products = @products.where(category: params[:category])
    end
    
    @categories = ["All"] + Product.distinct.pluck(:category)
  end
  
  def show
    @product = Product.find(params[:id])
  end
end