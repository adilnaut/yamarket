class StaticPagesController < ApplicationController
  before_action :authenticate_user!
  def home
    @products = Product.all
  end
  def about

  end
end
