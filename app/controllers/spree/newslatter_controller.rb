class Spree::NewslatterController < ApplicationController

  def create
    @newslatter_user = Spree::NewslatterUser.new(newslatter_user_params)
    respond_to do |format|
      if @newslatter_user.save
        flash[:notice] = 'Email agregado correctamente.'
      else
        flash[:error] = 'Error, el email ingresado es incorrecto.'
      end
      format.html { redirect_to(Spree::Config.newslatter_redirect) }
    end
  end

  private

    def newslatter_user_params
      params.require(:newslatter_user).permit(:email, taxon_ids: [])
    end


end
