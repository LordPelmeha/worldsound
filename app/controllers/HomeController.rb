class HomeController < ApplicationController
  def index
  end

  def genres
    @genres = Genre.all
  end

  def legends
  end

  def contact
  end
end
