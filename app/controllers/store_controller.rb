class StoreController < ApplicationController
  def index
  	@products = Product.order(:title)
  	@time = Time.now
  	increment_session_counter
  end

  def increment_session_counter
  	session[:counter] ||= 0
    session[:counter] += 1
    @sessioncounter = session[:counter]
  end
end
