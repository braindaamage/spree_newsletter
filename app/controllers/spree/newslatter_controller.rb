class Spree::NewslatterController < ApplicationController

  def create
    @newsletter_subscriber = NewsletterSubscriber.new(params[:newsletter_subscriber])
    respond_to do |format|
      if @newsletter_subscriber.save
        flash[:notice] = 'Email agregado correctamente.'
      else
        flash[:error] = 'Error, el email ingresado es incorrecto.'
      end
      format.html { redirect_to(root_url) }
    end
  end
end
