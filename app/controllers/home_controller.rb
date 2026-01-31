class HomeController < ApplicationController
  def index
  end

  def search
    @query = params[:q] || params[:query] || ''
  end

  def contact
  end
end
