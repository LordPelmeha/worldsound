class HomeController < ApplicationController
  def index
  end

  def genres
    @genres = Genre.all
  end

  def legends
    @legends = Legend.all
  end

  def contact
  end
end
