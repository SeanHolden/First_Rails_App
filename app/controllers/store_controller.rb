class StoreController < ApplicationController
  
  def index
  	@products = Product.order(:title)
    @cart = current_cart
  	@time = Time.now
  	increment_session_counter
    @total_items = number_of_items_in_cart
  end

  def increment_session_counter
  	session[:counter] ||= 0
    session[:counter] += 1
    @sessioncounter = session[:counter]
  end


end
