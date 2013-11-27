class ProductsController < ApplicationController
  include ProductsHelper

  def index
    @products = Product.all
  end
  
  def show
    @product = Product.find(params[:id])

    @review = Review.new
    @review.product_id = @product.id
  end 

  def new
    @product = Product.new
  end
  
  def create
    @product = Product.new(product_params)
    @product.save
    
    flash.notice = "Product '#{@product.name}' Created!"

    redirect_to product_path(@product)
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)

    flash.notice = "Product '#{@product.name}' Updated!"

    redirect_to product_path(@product)
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    flash.notice = "Product '#{@product.name}' Deleted!"

    redirect_to products_path
  end
end
