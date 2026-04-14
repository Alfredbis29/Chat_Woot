class CategoriesController < ApplicationController
  def index
    @categories = Category.ordered
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to categories_path, notice: 'Category was created successfully.'
    else
      render :new, status: :unprocessable_entity
    end
  end
end
