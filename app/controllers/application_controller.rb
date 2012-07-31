class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
  
  def current_cart 
  	Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound 
  	cart = Cart.create 
  	session[:cart_id] = cart.id
    cart
  end
  
#################SEAN'S CODE#################################
  def number_of_items_in_cart
    current_cart.line_items.sum(:quantity)
  end
###########################################################

#################SEANS CODE######REPLACED BY METHOD ABOVE##########################
#  def number_of_items_in_cart
#    number_of_items = 0
#    current_cart.line_items.each do |item|
#      number_of_items += item.quantity
#    end
#    number_of_items
#  end
###################################################################################
end
