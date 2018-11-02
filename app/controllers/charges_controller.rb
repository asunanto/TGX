class ChargesController < ApplicationController
  def new
  end
  
  def create
    
    @post = Post.find(session[:post_id])
    # Amount in cents
    @amount = @post.price_in_cents
    
    customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
    )
    
    charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => @post.product_name,
    :currency    => 'aud'
    
    )
    flash[:notice] = "Thanks, you purchased #{@post.product_name} for A$#{'%.2f' % @post.price.round(2)}"
    redirect_to posts_path
    @post.destroy

    rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
