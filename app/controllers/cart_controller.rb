class CartController < ApplicationController


def index
	# if there is a cart, pass it to the page for display else pass an emplty value
	if session[:cart] then
		@cart = session[:cart]
	else
		@cart = {}
	end
end
def add
    id = params[:id]
  	# if the cart has already been created, use the existing car else create a new cart
  	if session[:cart] then
  		cart = session[:cart]
  	else
  		session[:cart] = {}
  		cart = session[:cart]
  	end
  	# if the product has already been added to the cart, increment the value else set the id
  	if cart[id] then
  		cart[id] = cart[id] + 1
  	else
  		cart[id] = 1
  	end
  	redirect_to :action => :index
  end

def clearCart
	session[:cart] = nil
	redirect_to :action => :index
end
end
