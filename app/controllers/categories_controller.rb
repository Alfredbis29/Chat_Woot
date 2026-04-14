class CategoriesController < ApplicationController
  def index
    @categories = Category.ordered
  end

  def new
    @category = Category.new
  end
end
