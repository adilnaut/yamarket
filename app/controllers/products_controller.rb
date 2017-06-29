class ProductsController < ApplicationController


  before_action :set_product, only: [:show, :destroy, :edit, :update]
  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end
  def show
    @order_item = current_order.order_items.new
  end

  def new
    @product = Product.new

  end

  def create

    @product = Product.new product_params
    if @product.save
      redirect_to @product
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @product.update_attributes product_params
      redirect_to @product
    else
      render "edit"
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit( :category_id, :title, :price, :discount,:image, :description)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
